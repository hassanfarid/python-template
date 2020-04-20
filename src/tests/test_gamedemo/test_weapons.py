from gamedemo.weapons import *

def test_fire_breath_return_type():
    weapon = FireBreath()
    damage, sound = weapon.attack()
    assert str(type(damage)) == "<class 'int'>"
    assert str(type(sound)) == "<class 'str'>"

def test_fire_breath_does_not_fail_to_attck_on_start():
    weapon = FireBreath()
    damage, sound = weapon.attack()
    assert sound not in ("(waiting until it can breath fire again)")

def test_fire_breath_can_attck_on_start():
    weapon = FireBreath()
    damage, sound = weapon.attack()
    assert sound in ("Boom! Dragon Fire!", "The dragon produces only smoke..")

def test_sword_return_type():
    weapon = Sword()
    damage, sound = weapon.attack()
    assert str(type(damage)) == "<class 'int'>"
    assert str(type(sound)) == "<class 'str'>"