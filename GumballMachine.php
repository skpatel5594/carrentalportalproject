<?php

class Gumballmachine{
	
	private $gumbal;

	public function getGumballs(){
		return $this->gumballs;

	}
	public function setGumballs($amount){
		$this->gumballs = $amount;

	}

	public function turnwheel(){
		$this->setGumballs($this->getGumballs() -1);
	}
}