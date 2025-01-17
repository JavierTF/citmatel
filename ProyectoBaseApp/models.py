import datetime
import uuid

from django.contrib.auth.models import User
from django.contrib.sessions.models import Session
from django.db import models

class UserApp(User):
    uui = models.UUIDField(default=uuid.uuid4, editable=False)
    image = models.ImageField(upload_to='foto/', verbose_name="Avatar",
                              null=True, default='foto/userDefault1.png')
    referUser = models.UUIDField(null=True)
    fa2 = models.BooleanField(verbose_name="2FA", default=False)
    notificado = models.BooleanField(default = False, verbose_name = "notificado*")
    fecha_frase = models.DateTimeField(verbose_name="Fecha de última frase'", null = True)
    frase = models.CharField(max_length = 255, verbose_name = "frase", null = True)

    def __str__(self):
        return str(self.username)

    def Online(self):
        for s in Session.objects.all():
            if s.get_decoded():
                if self.id == int(s.get_decoded()['_auth_user_id']):
                    now = datetime.datetime.now()
                    dif = (now - s.expire_date)
                    if dif < datetime.timedelta(seconds=0):
                        return True
        return False

    class Meta:
        verbose_name_plural = "Usuarios"
