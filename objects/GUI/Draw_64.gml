/// @description Insert description here
// You can write your code in this editor
var _playerHealth = global.PlayerHealth;
var _playerHealthMax = global.PlayerHealthMax;
//var _playerHealthFrac = frac(_playerHealth);

for(var i =1; i<= _playerHealthMax; i++){
	/*var _imageIndex = (i> _playerHealth);
	if(i == _playerHealth+1){
		_imageIndex += (_playerHealthFrac >0);
		_imageIndex += (_playerHealthFrac >0.5);
	}*/
	var _imageIndex = 0;
	if((i = _playerHealth+1) && (_playerHealth % 2 = 1)){
		_imageIndex = 2;
	}
	if(i > _playerHealth +1){
		_imageIndex = 1;
	}
	if(i % 2 == 0){
		draw_sprite(hearts,_imageIndex, (i)*16,0);
	}
}
