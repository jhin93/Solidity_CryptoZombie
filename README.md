# Solidity  

[ Solidity 학습 순서 ]  

1.  크립토좀비  
https://cryptozombies.io/ko/course  

2. 인프런  
https://www.inflearn.com/course/blockchain-%EC%9D%B4%EB%8D%94%EB%A6%AC%EC%9B%80-dapp#curriculum  

3. dapp university  
https://www.youtube.com/watch?v=CgXQC4dbGUE&t=783s  

- 공식문서  
https://solidity-kr.readthedocs.io/ko/latest/index.html  


[Warm-up reference]  

블록체인이란(원리, 활용, 전망)  
http://wiki.hash.kr/index.php/%EB%B8%94%EB%A1%9D%EC%B2%B4%EC%9D%B8#.EC.9E.91.EB.8F.99_.EC.9B.90.EB.A6.AC

블록체인 구조 설명  
https://brownbears.tistory.com/371?category=281929

작업증명  
https://brownbears.tistory.com/373?category=281929  

지분증명  
http://wiki.hash.kr/index.php/%EC%A7%80%EB%B6%84%EC%A6%9D%EB%AA%85#cite_note-2  
https://www.youtube.com/watch?v=psKDXvXdr7k&t=64s  

우로보로스 지분증명  
http://wiki.hash.kr/index.php/%EC%9A%B0%EB%A1%9C%EB%B3%B4%EB%A1%9C%EC%8A%A4_%EC%A7%80%EB%B6%84%EC%A6%9D%EB%AA%85  

nonce 설명  
http://wiki.hash.kr/index.php/%EB%85%BC%EC%8A%A4_(%EC%9E%84%EC%8B%9C%EA%B0%92)

블록체인은 다수의 거래내역을 모아 하나의 블록을 구성하고, 그 블록을 대표하는 해시값을 생성하여 다른 블록과 체인처럼 연결된다. 이 때, 블록을 대표하는 해시값인 블록해시를 생성하려면, 일정한 조건을 만족해야 한다. 그 일정한 조건이란, 블록 난이도에 따라 자동으로 설정된 '목표값'보다 더 작은 블록해시값을 찾아야 한다는 제약조건이다. 해시는 랜덤하게 생성되기 때문에, 수없이 많은 연산을 반복해서 미리 정해진 목표값 이하의 해시값이 나오도록 해야 한다. 이때 랜덤한 해시값을 생성할 수 있도록 매번 임시값을 사용해야 하는데, 그 임시값이 바로 논스이다.

일반적으로 블록의 해시값은 해당 블록의 생성일시, 버전, 비츠(bits), 루트해시, 이전 블록의 해시, 그리고 논스(nonce)라고 불리는 임시값 등을 조합한 후 해시로 변환하여 생성한다. 해당 블록의 생성일시, 버전, 난이도, 루트해시와 이전 블록의 해시값은 이미 확정되어 정해진 값을 가지고 있지만, 논스라는 임시값이 달라짐에 따라 해시 연산 결과로 생성되는 블록 해시값도 다양하게 나올 수 있다. 예를 들어 논스가 1인 경우의 해시값과 2인 경우의 해시값은 전혀 다르다. 이 논스 값을 수없이 바꿔가면서 하나씩 대입하다가 새로 생성된 해시값이 일정한 목표값보다 더 작을 경우에 새로운 블록이 성공적으로 생성된다.

머클루트  
http://wiki.hash.kr/index.php/%EB%A8%B8%ED%81%B4%EB%A3%A8%ED%8A%B8  

bits 설명(+블록체인 작동 방식 설명)  
https://homoefficio.github.io/2016/01/23/BlockChain-%EA%B8%B0%EC%B4%88-%EA%B0%9C%EB%85%90/  

스마트 컨트랙트란?  
https://medium.com/haechi-audit-kr/smart-contract-a-to-z-79ebc04d6c86  

web3.js란?  
http://wiki.hash.kr/index.php/Web3.js  

node.js란?  
http://sblog.netraweb.com/node-js-%EA%B0%95%EC%A2%8C-node-js-%EB%9E%80-%EA%B0%9C%EB%85%90%EA%B3%BC-%EC%86%8C%EA%B0%9C/  

nft란? https://v.kakao.com/v/20210401051201642  
코인과 토큰의 차이 https://www.tokenpost.kr/terms/11550  
코인 메인넷이란? https://webruden.tistory.com/530  

geth 터미널 명령어  
https://geth.ethereum.org/docs/interface/command-line-options



[솔리디티 관련 자료 모음]

- 문법  

코딩 스타일가이드  
https://solidity-kr.readthedocs.io/ko/latest/style-guide.html#index-0  

명명규칙  
https://solidity-kr.readthedocs.io/ko/latest/style-guide.html#id16  

솔리디티 코드 레이아웃(스타일가이드)  
https://docs.soliditylang.org/en/v0.5.2/style-guide.html#code-layout  
https://medium.com/returnvalues/%EC%86%94%EB%A6%AC%EB%94%94%ED%8B%B0-v-0-5-2-%EC%8A%A4%ED%83%80%EC%9D%BC-%EA%B0%80%EC%9D%B4%EB%93%9C-19e2686201f6

여기는 문법개념을 분류해서 예시함수들로 설명함. visibility, 함수 제어자, 데이터 유형.  
https://potensj.tistory.com/18?category=671470  

접근 제어자(Visibility)에 대해서만 다룬 글  
https://caileb.tistory.com/140  

상태 제어자 설명 잘해놓은 글  
https://codemath.github.io/Solidity-%EC%9D%B4%EB%8D%94%EB%A6%AC%EC%9B%80-%EA%B8%B0%EB%B0%98-Dapp-%EA%B0%9C%EB%B0%9C%EA%B8%B0(2)-Solidity-%EC%96%B8%EC%96%B4-%EC%A0%95%EB%A6%AC/  

여긴 스마트 컨트랙트 구조, 변수, 데이터 위치 등 전반적으로 다룬다.  
https://d2fault.github.io/2018/03/19/20180319-about-solidity-1/  

import  
https://solidity-kr.readthedocs.io/ko/latest/layout-of-source-files.html#index-3  

storage와 memory  
https://www.geeksforgeeks.org/storage-vs-memory-in-solidity/  

calldata  
https://medium.com/day34/solidity-0-5-0-%EC%97%90%EC%84%9C%EC%9D%98-%EB%B3%80%EA%B2%BD%EC%82%AC%ED%95%AD%EC%9D%84-%EC%86%8C%EA%B0%9C%ED%95%A9%EB%8B%88%EB%8B%A4-ab6104296164  

https://docs.soliditylang.org/en/v0.5.3/types.html  


- 개념

modifier  
https://intrepidgeeks.com/tutorial/understanding-the-basics-of-entities-2  

https://codemath.github.io/Solidity-%EC%9D%B4%EB%8D%94%EB%A6%AC%EC%9B%80-%EA%B8%B0%EB%B0%98-Dapp-%EA%B0%9C%EB%B0%9C%EA%B8%B0(2)-Solidity-%EC%96%B8%EC%96%B4-%EC%A0%95%EB%A6%AC/  

pragma란?  
https://m.blog.naver.com/PostView.nhn?blogId=wnsdnjsjay&logNo=150178059882&proxyReferer=https:%2F%2Fwww.google.com%2F  

msg란?  
msg (tx 와 block 포함)는 유용한 전역 변수로 블록체인에 접근할 수 있는 다양한 속성들을 담고 있습니다.  
msg.sender 는 외부에서 지금 함수를 호출한 주소를 나타냅니다.  
https://solidity-kr.readthedocs.io/ko/latest/introduction-to-smart-contracts.html?highlight=msg#subcurrency 에서 '유용한 전역 변수' 검색.  

msg 멤버 값.  
https://solidity-kr.readthedocs.io/ko/latest/units-and-global-variables.html#index-2

bytes(동적 크기 바이트 배열)  
https://solidity-kr.readthedocs.io/ko/latest/types.html#id7  


자료형 (강철의 블록체인 유튜브 채널 운영자의 블로그)  
https://needjarvis.tistory.com/255

SHA-3 란?  
https://ko.wikipedia.org/wiki/SHA-3

keccak-256이란?  
http://wiki.hash.kr/index.php/Keccak-256

abi란?  
https://hucet.tistory.com/46  
https://cryptozombies.io/ko/lesson/6/chapter/3  

이더리움과 abi 관련. api와 비교.  
https://medium.com/pocs/ethereum-abi%EC%99%80-%EA%B4%80%EB%A0%A8%EB%90%9C-q-a-%EC%A0%95%EB%A6%AC-40e639ee1a03  

abi-encodepacked란?  
https://frontalnh.github.io/categories/ethereum/blockchain/  

솔리디티에서의 event에 대하여 (dApp = 스마트 컨트랙트 + 프론트엔드)  
솔리디티 안에는 print 기능이 따로 없다. 대신 event로 특정 값을 블록에 저장하여 emit으로 출력할 수 있다.  
https://nujabes403.medium.com/solidity-event%EC%97%90-%EB%8C%80%ED%95%B4%EC%84%9C-6ed040e12808  
https://www.youtube.com/watch?v=fbkt4u4yRzk  
https://www.youtube.com/watch?v=P39o5c3J7IA  

매핑과 구조체의 차이  
https://m.blog.naver.com/PostView.nhn?blogId=blokorea&logNo=221311000461&proxyReferer=https:%2F%2Fwww.google.com%2F  

구조체 배열 사용예시  
https://hatpub.tistory.com/56  

virtual  

Solidity에서 'virtual' 키워드는 상속 관계에 있는 컨트랙트 간에 함수를 오버라이딩(재정의)하는 목적으로 사용됩니다. 'virtual' 키워드를 사용하여 함수를 선언하면 해당 함수는 파생 클래스에서 재정의될 수 있습니다.
'virtual' 키워드를 사용하여 선언된 함수는 기본 구현을 가지며, 파생 클래스에서 필요에 따라 해당 함수를 재정의할 수 있습니다. 이는 Solidity에서의 다형성과 유연성을 제공합니다.
다음은 'virtual' 키워드를 사용하여 함수를 선언하는 예시입니다:
```java
contract Base {
    function foo() public virtual returns (uint) {
        // 기본 구현
        return 42;
    }
}

contract Derived is Base {
    function foo() public virtual override returns (uint) {
        // 기본 구현을 재정의
        return 10;
    }
}
```
위의 예시에서 Base 컨트랙트의 foo 함수는 virtual로 선언되었습니다. Derived 컨트랙트는 Base 컨트랙트를 상속받고, foo 함수를 override 키워드를 사용하여 재정의하였습니다.
이제 Derived 컨트랙트의 인스턴스에서 foo 함수를 호출하면 Derived 컨트랙트에서 재정의된 구현이 실행됩니다.
```java
Derived instance = new Derived();
uint result = instance.foo();  // 10을 반환
```
이와 같이 'virtual' 키워드를 사용하여 선언된 함수는 상속 관계에서 오버라이딩될 수 있으며, 파생 클래스에서 해당 함수의 동작을 재정의할 수 있습니다. 이는 Solidity에서 다형성과 상속을 활용하여 유연하고 모듈화된 스마트 컨트랙트를 구현하는 데 도움을 줍니다.

오버라이드(override)  
Solidity의 'override' 키워드는 상속 관계에 있는 컨트랙트에서 함수를 오버라이딩(재정의)할 때 사용됩니다. 'override' 키워드를 사용하여 함수를 선언하면 컴파일러가 해당 함수가 상위 클래스의 함수를 재정의하고 있는지 확인합니다.
'override' 키워드를 사용하여 함수를 선언하면 다음과 같은 조건을 충족해야 합니다
1. 상속 관계에서 해당 함수를 재정의할 때 'override' 키워드를 사용해야 합니다.
2.  함수 이름, 매개변수의 개수와 타입 및 순서, 반환값의 타입이 동일해야 함

```java
contract Base {
    function foo(uint a) public virtual returns (uint) {
        // 기본 구현
        return a * 2;
    }
}

contract Derived is Base {
    function foo(uint a) public override returns (uint) {
        // 상위 클래스의 함수를 재정의
        // 추가적인 동작 수행
        return a + 10;
    }
}

// 잘못된 예시(b라는 다른 매개변수 이름을 사용하고, 반환값 타입을 number로 변경했습니다. 이는 올바른 오버라이딩이 아니기 때문에 컴파일러가 오류를 발생시킵니다)
contract Derived is Base {
    function foo(uint b) public override returns (number) {
        // 상위 클래스의 함수를 재정의
        // 추가적인 동작 수행
        return b + 10;
    }
}
```


생성자(constructor)  
https://caileb.tistory.com/137  
https://docs.soliditylang.org/en/v0.7.5/contracts.html?highlight=constructor#constructors  
  
생성자의 가시성에 대한 이슈 업데이트 - Visibility (public / external) is not needed for constructors anymore:  
https://docs.soliditylang.org/en/v0.7.0/070-breaking-changes.html#functions-and-events  

가스란?  
https://phemex.com/ko/academy/%EC%9D%B4%EB%8D%94%EB%A6%AC%EC%9B%80-%EA%B0%80%EC%8A%A4%EB%9E%80  

payable 제어자  
https://www.crocus.co.kr/1254  

address 관련 (balance, transfer 등)  
https://solidity-kr.readthedocs.io/ko/latest/types.html?highlight=balance#address-members  
https://solidity-kr.readthedocs.io/ko/latest/units-and-global-variables.html  

이더리움 계정(Account), 트랜잭션(Transaction), 메시지(Message) + 스마트 컨트랙트  
https://brownbears.tistory.com/385  

안전한 난수생성  
https://ethereum.stackexchange.com/questions/191/how-can-i-securely-generate-a-random-number-in-my-smart-contract  

ERC-20(대체 가능)  
http://wiki.hash.kr/index.php/ERC-20  
사용규칙 : http://wiki.hash.kr/index.php/ERC-20#.EA.B7.9C.EC.B9.99  

ERC-721(대체 불가능)  
http://wiki.hash.kr/index.php/ERC-721#OpenZeppelin  

ERC-721 표준안  
https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md#specification  

ERC 정리  
https://eips.ethereum.org/erc  

추상 컨트랙트(abstract contract), 인터페이스.  
https://goodgid.github.io/Ethereum-Basic-Solidity-(8)/  
https://medium.com/upstate-interactive/solidity-how-to-know-when-to-use-abstract-contracts-vs-interfaces-874cab860c56  

인터페이스  
https://www.youtube.com/watch?v=7H9eb_6QRAk  
*인터페이스를 사용하는 상황에서, 인터페이스 내 함수를 사용(정의)할때는 override 키워드를 명시해야 한다.
https://cryptozombies.io/ko/lesson/2/chapter/10  

오버라이딩  
https://docs.soliditylang.org/en/v0.6.0/contracts.html#function-overriding  
* 함수 overriding 시, 다중 상속(혹은 연속 상속)이 일어난 경우 overriding 하려는 함수의 contract를 명시해줘야 한다.
http://wiki.hash.kr/index.php/%EC%98%A4%EB%B2%84%EB%9D%BC%EC%9D%B4%EB%94%A9  
https://medium.com/upstate-interactive/solidity-override-vs-virtual-functions-c0a5dfb83aaf  


오버로딩  
http://wiki.hash.kr/index.php/%EC%98%A4%EB%B2%84%EB%A1%9C%EB%94%A9  
https://solidity-kr.readthedocs.io/ko/latest/contracts.html#index-11  

데이터 단위(비트, 바이트..) 8bit == 2^8 - 1 == (2^7) + (2^6) + ... + (2^0)  
https://kbench.com/?q=node/2635  

오버플로우 발생 예시  
https://steemit.com/kr-dev/@modolee/the-go-programming-language-3-3-1  
  
자주 쓰이는 패턴  
https://solidity-kr.readthedocs.io/ko/latest/common-patterns.html  

라이브러리(library)  
https://www.youtube.com/watch?v=CkQDssQ7EJM  
https://solidity-kr.readthedocs.io/ko/latest/contracts.html#libraries  

super.  
https://solidity-kr.readthedocs.io/ko/latest/miscellaneous.html#index-4  
super 키워드는 주로 두 가지 상황에서 사용됩니다  
1. 함수 오버라이딩 (Function Overriding):
만약 자식 컨트랙트가 부모 컨트랙트로부터 함수를 상속받아 동일한 이름의 함수를 정의하고자 할 때, super를 사용하여 부모 컨트랙트의 함수를 호출할 수 있습니다. 이는 자식 컨트랙트에서 부모 컨트랙트의 동작을 유지하면서 추가적인 동작을 수행하고자 할 때 유용합니다. 예를 들어
```java
contract Parent {
    function foo() public virtual {
        // 부모 컨트랙트의 동작
    }
}

contract Child is Parent {
    function foo() public override {
        // 부모 컨트랙트의 동작 유지하고 추가적인 동작 수행
        super.foo();
        // 추가 동작
    }
}
```
자식 컨트랙트에서 super.foo()를 호출함으로써 부모 컨트랙트의 foo() 함수를 실행할 수 있습니다.  
2. 변수 및 modifier 접근  
super를 사용하여 부모 컨트랙트의 변수와 modifier에 접근할 수 있습니다. 자식 컨트랙트에서 super를 사용하여 부모 컨트랙트의 변수 값을 가져올 수 있으며, modifier를 상속받은 경우 super를 사용하여 부모 modifier를 실행할 수 있습니다.  
```java
contract Parent {
    uint public x;
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract Child is Parent {
    function setX(uint _x) public onlyOwner {
        // 부모 컨트랙트의 변수에 접근
        super.x = _x
        // 부모 컨트랙트의 modifier 실행
        super.onlyOwner();
        // 추가 동작
    }
}

```
자식 컨트랙트에서 super.x를 통해 부모 컨트랙트의 변수에 접근하거나, super.onlyOwner()를 호출하여 부모 컨트랙트의 modifier를 실행할 수 있습니다.



Using For  
https://solidity-kr.readthedocs.io/ko/latest/contracts.html#using-for  
```java
// example 1
library Math {
    function add(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }
}

struct Number {
    uint value;
}

using Math for Number;

function addTwoNumbers(uint a, uint b) public view returns (uint) {
    Number memory num = Number(a);
    return num.add(b);  // Math 라이브러리의 add 함수를 호출
}

```

```java
pragma solidity >=0.4.16 <0.6.0;

// example 2
// This is the same code as before, just without comments
library Set {
  struct Data { mapping(uint => bool) flags; }

  function insert(Data storage self, uint value)
      public
      returns (bool)
  {
      if (self.flags[value])
        return false; // already there
      self.flags[value] = true;
      return true;
  }

  function remove(Data storage self, uint value)
      public
      returns (bool)
  {
      if (!self.flags[value])
          return false; // not there
      self.flags[value] = false;
      return true;
  }

  function contains(Data storage self, uint value)
      public
      view
      returns (bool)
  {
      return self.flags[value];
  }
}

contract C {
    using Set for Set.Data; // this is the crucial change
    // Set을 Set.Data라는 타입을 가진 변수(Set.Data knownValues;)가 사용할 수 있도록 해준다. 그래서 Set.Data 타입의 변수가 라이브러리 Set 안에 있는 insert 함수를 사용할 수 있다.
    Set.Data knownValues;
    // Here, all variables of type Set.Data have
    // corresponding member functions.
    // The following function call is identical to
    // `Set.insert(knownValues, value)`
    function register(uint value) public {
        require(knownValues.insert(value));
    }
}
```
assert : 조건이 충족되지 않으면 예외를 발생시킵니다 - 내부 에러에 사용됩니다.  
require : 조건이 충족되지 않으면 예외를 발생시킵니다 - 입력 또는 외부 요소의 에러에 사용됩니다.  
https://solidity-kr.readthedocs.io/ko/latest/units-and-global-variables.html?highlight=assert#index-3. 
  
assert : 함수 실행이 실패해도 남은 가스 돌려주지 않음.  
require : 함수 실행이 실패하면 남은 가스 되돌려줌.  
https://cryptozombies.io/ko/lesson/5/chapter/10  

블록체인 네트워크, 노드  
https://www.youtube.com/watch?v=u4voz9XBbWA  

캐시란  
https://ko.wikipedia.org/wiki/%EC%BA%90%EC%8B%9C  
https://mangkyu.tistory.com/69  

-Web3.js 와 컨트랙트의 통신  
필요한 것 : 컨트랙트 주소, 컨트랙트 ABI  
컨트랙트 주소 - 이더리움에 배포하면 영구적이고 고정된 주소를 얻게 됨. 복사해서 사용.  
컨트랙트 ABI - 이더리움에 이더리움에 배포하기 위해 컨트랙트를 컴파일할 때, 솔리디티 컴파일러가 자네에게 ABI를 줌.  
(해당 내용 챕터 : https://cryptozombies.io/ko/lesson/6/chapter/3)  

비동기 처리방식  
https://joshua1988.github.io/web-development/javascript/javascript-asynchronous-operation/  

자바스크립트 promise  
https://joshua1988.github.io/web-development/javascript/promise-for-beginners/  

자바스크립트 setinterval  
https://kyounghwan01.github.io/blog/JS/JSbasic/intervalFunction/#setinterval  

자바스크립트 es6 for of(+for in)  
https://jsdev.kr/t/for-in-vs-for-of/2938  

자바스크립트 template literal  
https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Template_literals  

.on 이벤트 바인딩  
http://www.devkuma.com/books/pages/232  

indexed 키워드  
https://solidity-kr.readthedocs.io/ko/latest/miscellaneous.html#index-6  
https://docs.soliditylang.org/en/latest/contracts.html#events  

web3js에서 메소드, 이벤트를 다루는 법  
ex - CryptoZombies.methods.createRandomZombie(name)  
ex - cryptoZombies.events.NewZombie()...  

overflow, underflow  
https://gjwjdgnsrnlg.tistory.com/201  

 ** Call method  
 
   (bool 변수, bytes memory 변수) = .call{보낼 이더}("함수호출"). 
   
   1. 송금만 하는 상황 call{value:보낼 value}(""). 함수호출을 하지 않는다면 뒤의 ("")부분은 비워둔다.
   2. 함수 호출만 하는 상황.("")의 ""안에 부르려는 함수를 기재. 이더를 보내지 않는다면 .call("")처럼 {}를 생략한 형태가 될 것.
   3. 리턴 타입은 (bool 변수, bytes memory 변수). 만약 송금만 한다면 콤마(,)뒤의 'bytes memory 변수' 부분은 비워둠. 반대의 경우도 
   https://www.youtube.com/watch?v=ax5lHvxL9dE 6분 ~ 9분
   https://medium.com/coinmonks/solidity-transfer-vs-send-vs-call-function-64c92cfc878a
   (bool sent, bytes memory data) = _to.call.gas(10000){value: msg.value}("");

https://solidity-by-example.org/call/  
https://ethereum.stackexchange.com/questions/96685/how-to-use-address-call-in-solidity  
https://consensys.github.io/smart-contract-best-practices/development-recommendations/general/external-calls/  
https://medium.com/coinmonks/solidity-transfer-vs-send-vs-call-function-64c92cfc878a  



snapshot. 
DAO에서는 어떤 제안이 들어올지를 미리 알고 해당 제안에 덤핑하는 현상을 막기 위해 snapshot을 사용한다.  
스냅샷(snapshot)이란 특정한 시점에서 각 사용자들이 보유하고 있는 암호화폐의 수량을 "마치 사진을 찍듯이" 별도로 저장해 두는 행위를 말한다. 
블록체인 데이터의 경우에 특정한 블록을 기준으로 데이터를 복사하여 저장하는 행위를 스냅샷이라고 한다.  
스냅샷 일정이 14일이고 에어드랍이 20일이라고 가정한다면 14일 기준으로 A코인을 가지고 있어야 B코인을 20일에 무료로 받을 수 있게 된다. 이때 스냅샷 날짜인 14일부터 해당 코인의 거래는 중단되고 에어드랍 실시일 20일이 되서야 기존 코인과 추가 코인이 시장에서 활성화된다.
http://wiki.hash.kr/index.php/%EC%8A%A4%EB%83%85%EC%83%B7  

openzeppelin docs - Contract Wizard  
erc20, erc721, erc1155 등 프로토콜에 원하는 기능(mint, burn...)등을 UI로 넣어서 스마트 컨트랙트를 짤 수 있게 해준다.
https://docs.openzeppelin.com/contracts/4.x/wizard  


Hardhat  
Hardhat comes built-in with Hardhat Network, a local Ethereum network node designed for development.  
It allows you to deploy your contracts, run your tests and debug your code, all within the confines of your local machine.  
요약 : 하드햇은 자체 로컬 네트워크를 내장한 라이브러리라서 바로바로 마이닝되고 배포된다. 노드 1개짜리 네트워크라고 보면 될듯
https://hardhat.org/hardhat-network/docs/overview  

UTXO 개념  
https://steemit.com/kr/@brownbears/utxo  

상속 키워드 'is'  
https://merrily-code.tistory.com/103  

this  
```
_from == address(this) 조건은 함수 내에서 주소(_from)가 현재 스마트 컨트랙트(address(this))와 동일한지 확인하는 조건입니다.  

스마트 컨트랙트는 이더리움 블록체인 상에 배포되는 프로그램으로, 자체적으로 계약 로직을 실행하고 상호작용할 수 있는 역할을 합니다. 스마트 컨트랙트는 주소로 식별되며, address(this) 표현은 현재 실행 중인 스마트 컨트랙트의 주소를 나타냅니다.  

따라서 _from == address(this) 조건은 함수에 전달된 _from 주소가 현재 실행 중인 스마트 컨트랙트의 주소와 동일한지 확인하는 것을 의미합니다. 즉, 함수 내에서는 _from 주소가 스마트 컨트랙트 자체에서 이루어지는 트랜잭션이라면, _currency 토큰을 _to 주소로 안전하게 전송합니다. 이는 스마트 컨트랙트에서 특정 토큰을 다른 주소로 전송하는 로직을 구현하는 데 사용될 수 있습니다.  
```

ERC-20 토큰 주소
ChatGPT에게 한 질문 : safeTransferERC20 함수의 인자 address _currency 가 뭐야?  
```
safeTransferERC20 함수의 인자 address _currency는 토큰의 주소를 나타냅니다. 이 주소는 ERC-20 토큰 컨트랙트의 주소를 가리킵니다.  

ERC-20은 Ethereum 기반의 토큰 표준으로, 다양한 토큰들이 이 표준을 따라 개발되고 배포됩니다. 각각의 ERC-20 토큰은 고유한 주소를 갖고 있으며, 이 주소는 토큰 컨트랙트를 식별합니다.  

safeTransferERC20 함수에서 _currency 인자는 전달받은 토큰의 주소를 의미합니다. 이 주소는 _from 주소에서 _to 주소로 해당 토큰을 전송할 때 사용됩니다. _currency 주소에 해당하는 토큰 컨트랙트의 함수를 호출하여 토큰을 전송하게 됩니다.  

따라서 address _currency는 safeTransferERC20 함수의 매개변수로 전달된 ERC-20 토큰의 주소를 나타내며, 해당 주소의 토큰을 전송하는 데 사용됩니다.  
```

ERC-20 토큰의 고유한 주소 예시를 2개
```
이더리움 (Ethereum) 토큰 주소:
주소: 0x0ETH
이더리움 메인 넷 (Mainnet)에서 배포된 ERC-20 토큰의 주소 예시입니다.

테더 (Tether) 토큰 주소:
주소: 0xdAC17F958D2ee523a2206206994597C13D831ec7
테더(USDT)는 ERC-20 표준을 따르는 스테이블 코인으로, 위 주소는 메인 넷에서 테더 토큰 컨트랙트의 주소 예시입니다.

각각의 ERC-20 토큰은 고유한 주소를 가지며, 이 주소는 토큰의 식별자 역할을 합니다. 이러한 주소를 사용하여 토큰 컨트랙트에 접근하고 토큰 관련 작업을 수행할 수 있습니다. 
위 예시는 토큰 주소의 형식을 보여주는 예시일 뿐, 실제 사용되는 ERC-20 토큰의 주소는 해당 토큰의 배포와 관련된 것입니다.
```


solidity import error(@openzeppelin 빨간 줄)  
https://github.com/juanfranblanco/vscode-solidity/issues/70  

settings.json  -> "solidity.packageDefaultDependenciesDirectory": "node_modules" 입력






