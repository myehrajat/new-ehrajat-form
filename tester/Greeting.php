<?php

class Greeting
{
	public function say($name)
	{
		if (!$name) {
			throw new InvalidArgumentException('Invalid name');
		}
		return "Hello $name";
	}
}