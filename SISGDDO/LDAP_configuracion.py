from ldap3 import Server, Connection, ALL, Tls
import ssl
from django.contrib.auth.models import User

# Definir los parámetros de conexión LDAP
def sinc_usuarios_LDAP():     

  s = Server('dc3.citmatel.inf.cu', port = 3268, get_info=ALL)
  c = Connection(s, user='cn=cwaservice', password='kemet123456*', auto_bind = True)
  c.start_tls()
  c.bind()
  c.search('dc=citmatel,dc=inf,dc=cu', '(uid=*)', attributes=['sn','cn', 'homeDirectory'], size_limit=0)
  for dn,attrs,raw_attrs in c.response:
      email= dn
      username = attrs['cn']
        # Verificar si el usuario ya existe en la base de datos Django
      if not User.objects.filter(username=username).exists():
            # Crear un nuevo usuario si no existe
            user = User.objects.create_user(username=username, email=email,password='A123456a')
            user.save()
     