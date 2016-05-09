# gulp-cmd
A docker images eases the use of gulp enviroment

# Enviroment Variables
<table>
  <tr>
    <td>WORKDIR</td>
    <td>/mnt/gulp-work</td>
  </tr>
</table>

# Volumes
/mnt/gulp-work

# Dependencies

* alpine 3.3

# Usage
<code>
docker run --rm -it -v $(pwd):/mnt/gulp-work oopschen/gulp-cmd npm install && gulp [goals]
</code>
