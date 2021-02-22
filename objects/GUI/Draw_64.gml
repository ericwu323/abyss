/// @description Insert description here
// You can write your code in this editor
var _playerHealth = global.PlayerHealth;
var _playerHealthMax = global.PlayerHealthMax;
var _coins = global.Coins;
var _coincount = ("x" + string(_coins));
var _items = global.items;
var length = array_length(_items);

for(var a = 0; a < length; a++){
	instance_create_layer(63+a*32,100,layer,_items[a]);
	//draw_text(63+a*32,130,_items[a]);
}

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
draw_sprite(scoin,0,63,99);
DrawSetText(c_white,fsign,fa_center,fa_top);
draw_text(92,75,_coincount);
