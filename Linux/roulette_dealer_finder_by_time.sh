#!/bin/bash

grep '$1:00:00 $2' $3_Dealer_schedule | awk '{print $1, $2, $5, $6}' > Dealers_working_during_losses


