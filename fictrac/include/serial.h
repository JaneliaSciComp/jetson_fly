///
/// Saul Thurrowgood, 2008.
///

/*#####################################################################
# This work is licensed under the Creative Commons                    #
# Attribution-NonCommercial-ShareAlike 3.0 Unported License.          #
# To view a copy of this license, visit                               #
# http://creativecommons.org/licenses/by-nc-sa/3.0/                   #
#                                                                     #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY           #
# KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE          #
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR             #
# PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR       #
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER         #
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,     #
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE      #
# USE OR OTHER DEALINGS IN THE SOFTWARE.                              #
#####################################################################*/

#ifndef __SERIAL_H__
#define __SERIAL_H__

#include <termios.h>
#include <unistd.h>

struct serial {
	int fd;
	int baud;
	struct termios oldtio,newtio;
};

int serial_open(struct serial *ser, const char *port, int baud);
int serial_write(struct serial *ser, void *buf, int len);
int serial_bytes_available(struct serial *ser);
int serial_read(struct serial *ser, void *buf, int len, int timeout_ms);
int serial_read_until_char(struct serial *ser, void *buf, int len,
		char end, int timeout_ms);
void serial_close(struct serial *ser);


#endif /* ndef __SERIAL_H__ */

