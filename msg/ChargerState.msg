builtin_interfaces/Time charger_time

string charger_name

# there are all the possible values for the main state
uint16 TPU_RESERVE_0  = 1
uint16 TPU_IDLE       = 2  # TPU stays in the state if the charger is OK and not occupied

uint16 TPU_HANDSHAKE_0 = 3  # These three states are the handshake process between the TPU and RCU
uint16 TPU_HANDSHAKE_1 = 4  # Totoal time needed for the handshake is 2-5 seconds
uint16 TPU_HANDSHAKE_2 = 5  # The handshake includes position checking and power checking, the charger will only 
                            # continue if all the checkings are passed otherwise it will report error

uint16 TPU_CHARGING   = 6  # Everythis is fine and the power transfer is ongoing

uint16 TPU_STOP       = 7  # Charging stopped

uint16 TPU_ERROR      = 238
uint16 TPU_RESERVE_1  = 240

# this is the main state of the TPU
uint16 state

# this is set when the main state is TPU_ERROR
# otherwise it is empty
string error_msg

# this is set when it's in TPU_HANDSHAKE, TPU_PAIRED, TPU_PRERUN and TPU_CHARGING. The three states means the robot is
# in front of the TPU and started the charging process
# it is empty when it is in other state
string accept_id


