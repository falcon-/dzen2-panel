#!/bin/bash

charge=$(acpi|cut -d "," -f 2)
	echo -n "$charge^fg()"
