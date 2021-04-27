// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;
    
    function _createZombie(string _name, uint _dna) private {
        // 왜 storage에 저장했는데 저장이 안됐다고 뜨는 걸까.
        Zombie storage dataSave = zombies[_name];
        dataSave.name = "it's name";
        // 위 두 문장이 작동을 안하는 이유는 뭘까.
        zombies.push(Zombie(_name, _dna));
    }

}

// 위의 예시에서 볼 수 있듯이 private 키워드는 함수명 다음에 적네. 
// 함수 인자명과 마찬가지로 private한 함수명도 언더바(_)로 시작하는 것이 관례라네.