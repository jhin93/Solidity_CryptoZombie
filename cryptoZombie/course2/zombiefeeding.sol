// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

// 접근 제어자(visibility modifier) : public, private, internal, external
// 상태 제어자(state modifier) : view, pure

// 챕터 2: 소유 가능한 컨트랙트

// 자네, 이전 챕터에서 보안 취약점을 발견했는가?

// setKittyContractAddress 함수는 external이라, 누구든 이 함수를 호출할 수 있네! 
// 이는 아무나 이 함수를 호출해서 크립트키티 컨트랙트의 주소를 바꿀 수 있고, 모든 사용자를 대상으로 우리 앱을 무용지물로 만들 수 있다는 것이지.
// 우리는 우리 컨트랙트에서 이 주소를 바꿀 수 있게끔 하고 싶지만, 그렇다고 모든 사람이 주소를 업데이트할 수 있기를 원하지는 않네.
// 이런 경우에 대처하기 위해서, 최근에 주로 쓰는 하나의 방법은 컨트랙트를 소유 가능하게 만드는 것이네. 컨트랙트를 대상으로 특별한 권리를 가지는 소유자가 있음을 의미하는 것이지.

// 직접 해보기
// 우리가 먼저 Ownable 컨트랙트의 코드를 ownable.sol이라는 새로운 파일로 복사해놨다네. 어서 ZombieFactory가 이걸 상속받도록 만들어보게.
// 1. 우리 코드가 ownable.sol의 내용을 import하도록 수정하게. 어떻게 하는지 기억이 나지 않는다면 zombiefeeding.sol을 살펴보게.
// 2. ZombieFactory 컨트랙트가 Ownable을 상속하도록 수정하게. 다시 말하지만, 이걸 어떻게 하는지 잘 기억나지 않는다면 zombiefeeding.sol을 살펴보게.

import "./zombiefactory.sol";

interface KittyInterface {
  function getKitty(uint256 _id) external view returns (
    bool isGestating,
    bool isReady,
    uint256 cooldownIndex,
    uint256 nextActionAt,
    uint256 siringWithId,
    uint256 birthTime,
    uint256 matronId,
    uint256 sireId,
    uint256 generation,
    uint256 genes
  );
}

contract ZombieFeeding is ZombieFactory {

  KittyInterface kittyContract;

  function setKittyContractAddress(address _address) external {
    kittyContract = KittyInterface(_address);
  }
  function feedAndMultiply(uint _zombieId, uint _targetDna, string memory _species) public {
    require(msg.sender == zombieToOwner[_zombieId]);
    Zombie storage myZombie = zombies[_zombieId];
    _targetDna = _targetDna % dnaModulus;
    uint newDna = (myZombie.dna + _targetDna) / 2;
    if(keccak256(abi.encodePacked(_species)) == keccak256("kitty")){
      newDna = newDna - newDna % 100 + 99;
    }
    _createZombie("NoName", newDna);
  }

  function feedOnKitty(uint _zombieId, uint _kittyId) public {
    uint kittyDna;
    (,,,,,,,,,kittyDna) = kittyContract.getKitty(_kittyId);
    feedAndMultiply(_zombieId, kittyDna, "kitty");
  }

}

// OpenZeppelin의 Ownable 컨트랙트

// 아래에 나와있는 것은 OpenZeppelin 솔리디티 라이브러리에서 가져온 Ownable 컨트랙트이네. OpenZeppelin은 자네의 DApp에서 사용할 수 있는, 안전하고 커뮤니티에서 검증받은 스마트 컨트랙트의 라이브러리라네. 
// 이 레슨 이후에, 자네가 레슨 4의 출시를 고대하며 기다리는 동안, 우린 자네가 저들의 사이트를 확인하고 더 학습하기를 추천하네!
// 아래 컨트랙트를 한번 훑어보게. 우리가 아직 배우지 않은 것들이 몇몇 보이겠지만, 걱정하지 말게. 앞으로 그것들에 대해 차차 살펴볼 것이네.

// /**
//  * @title Ownable
//  * @dev The Ownable contract has an owner address, and provides basic authorization control
//  * functions, this simplifies the implementation of "user permissions".
//  */
// contract Ownable {
//   address public owner;
//   event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

//   /**
//    * @dev The Ownable constructor sets the original `owner` of the contract to the sender
//    * account.
//    */
//   function Ownable() public {
//     owner = msg.sender;
//   }

//   /**
//    * @dev Throws if called by any account other than the owner.
//    */
//   modifier onlyOwner() {
//     require(msg.sender == owner);
//     _;
//   }

//   /**
//    * @dev Allows the current owner to transfer control of the contract to a newOwner.
//    * @param newOwner The address to transfer ownership to.
//    */
//   function transferOwnership(address newOwner) public onlyOwner {
//     require(newOwner != address(0));
//     OwnershipTransferred(owner, newOwner);
//     owner = newOwner;
//   }
// }

// 생성자(Constructor): function Ownable()는 생성자이네. 
// 컨트랙트와 동일한 이름을 가진,생략할 수 있는 특별한 함수이지. 
// 이 함수는 컨트랙트가 생성될 때 딱 한 번만 실행된다네.

// 함수 제어자(Function Modifier): modifier onlyOwner(). 
// 제어자는 다른 함수들에 대한 접근을 제어하기 위해 사용되는 일종의 유사 함수라네. 
// 보통 함수 실행 전의 요구사항 충족 여부를 확인하는 데에 사용하지. 
// onlyOwner의 경우에는 접근을 제한해서 오직 컨트랙트의 소유자만 해당 함수를 실행할 수 있도록 하기 위해 사용될 수 있지. 
// 우리는 다음 챕터에서 함수 제어자에 대해 더 살펴보고, _;라는 이상한 것이 뭘 하는 것인지 알아볼 것이네.

// indexed 키워드: 이건 걱정하지 말게. 우린 아직 이게 필요하지 않아.

// 즉, Ownable 컨트랙트는 기본적으로 다음과 같은 것들을 하네:

// 1. 컨트랙트가 생성되면 컨트랙트의 생성자가 owner에 msg.sender(컨트랙트를 배포한 사람)를 대입한다.
// 2. 특정한 함수들에 대해서 오직 소유자만 접근할 수 있도록 제한 가능한 onlyOwner 제어자를 추가한다.
// 3. 새로운 소유자에게 해당 컨트랙트의 소유권을 옮길 수 있도록 한다.

// onlyOwner는 컨트랙트에서 흔히 쓰는 것 중 하나라, 대부분의 솔리디티 DApp들은 Ownable 컨트랙트를 복사/붙여넣기 하면서 시작한다네. 
// 그리고 첫 컨트랙트는 이 컨트랙트를 상속해서 만들지.

// 우리는 setKittyContractAddress 함수를 onlyOwner로 제한하고 싶으니까, 우리 컨트랙트에도 똑같이 적용해보겠네.