.class public Lio/boxcar/push/BXCConfig;
.super Ljava/lang/Object;
.source "BXCConfig.java"


# instance fields
.field a:Lio/boxcar/push/model/BXCRegistration$a;

.field b:Z

.field c:Lio/boxcar/push/ui/BXCNotificationStrategy;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/boxcar/push/ui/BXCNotificationStrategy;)V
    .locals 8
    .parameter "p1PushScheme"
    .parameter "p1PushHost"
    .parameter "p1PushPort"
    .parameter "p1PushClientKey"
    .parameter "p1PushClientSecret"
    .parameter "notificationStrategy"

    .prologue
    .line 59
    const-string v7, "856665945963"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lio/boxcar/push/BXCConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/boxcar/push/ui/BXCNotificationStrategy;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/boxcar/push/ui/BXCNotificationStrategy;Ljava/lang/String;)V
    .locals 4
    .parameter "p1PushScheme"
    .parameter "p1PushHost"
    .parameter "p1PushPort"
    .parameter "p1PushClientKey"
    .parameter "p1PushClientSecret"
    .parameter "notificationStrategy"
    .parameter "senderId"

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v2, Lio/boxcar/push/model/BXCRegistration$a;->a:Lio/boxcar/push/model/BXCRegistration$a;

    iput-object v2, p0, Lio/boxcar/push/BXCConfig;->a:Lio/boxcar/push/model/BXCRegistration$a;

    .line 14
    iput-boolean v1, p0, Lio/boxcar/push/BXCConfig;->b:Z

    .line 81
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported scheme. Only http | https allowed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/boxcar/push/BXCConfig;->d:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lio/boxcar/push/BXCConfig;->e:Ljava/lang/String;

    .line 86
    iput p3, p0, Lio/boxcar/push/BXCConfig;->f:I

    .line 87
    iput-object p4, p0, Lio/boxcar/push/BXCConfig;->g:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lio/boxcar/push/BXCConfig;->h:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Lio/boxcar/push/BXCConfig;->c:Lio/boxcar/push/ui/BXCNotificationStrategy;

    .line 90
    iput-object p7, p0, Lio/boxcar/push/BXCConfig;->j:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v0, defaultRichPushBaseUrl:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lio/boxcar/push/BXCConfig;->getPushScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lio/boxcar/push/BXCConfig;->getPushHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/boxcar/push/BXCConfig;->i:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/boxcar/push/ui/BXCNotificationStrategy;)V
    .locals 7
    .parameter "pushScheme"
    .parameter "pushHost"
    .parameter "pushClientKey"
    .parameter "pushClientSecret"
    .parameter "notificationStrategy"

    .prologue
    .line 38
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v3, 0x1bb

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/boxcar/push/BXCConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/boxcar/push/ui/BXCNotificationStrategy;)V

    .line 43
    return-void

    .line 38
    :cond_0
    const/16 v3, 0x50

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 228
    if-nez p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    instance-of v2, p1, Lio/boxcar/push/BXCConfig;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 234
    check-cast v0, Lio/boxcar/push/BXCConfig;

    .line 235
    .local v0, other:Lio/boxcar/push/BXCConfig;
    iget-object v2, v0, Lio/boxcar/push/BXCConfig;->a:Lio/boxcar/push/model/BXCRegistration$a;

    iget-object v3, p0, Lio/boxcar/push/BXCConfig;->a:Lio/boxcar/push/model/BXCRegistration$a;

    invoke-virtual {v2, v3}, Lio/boxcar/push/model/BXCRegistration$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-boolean v2, v0, Lio/boxcar/push/BXCConfig;->b:Z

    iget-boolean v3, p0, Lio/boxcar/push/BXCConfig;->b:Z

    if-ne v2, v3, :cond_0

    .line 241
    iget-object v2, v0, Lio/boxcar/push/BXCConfig;->g:Ljava/lang/String;

    iget-object v3, p0, Lio/boxcar/push/BXCConfig;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, v0, Lio/boxcar/push/BXCConfig;->d:Ljava/lang/String;

    iget-object v3, p0, Lio/boxcar/push/BXCConfig;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, v0, Lio/boxcar/push/BXCConfig;->e:Ljava/lang/String;

    iget-object v3, p0, Lio/boxcar/push/BXCConfig;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget v2, v0, Lio/boxcar/push/BXCConfig;->f:I

    iget v3, p0, Lio/boxcar/push/BXCConfig;->f:I

    if-ne v2, v3, :cond_0

    .line 253
    iget-object v2, v0, Lio/boxcar/push/BXCConfig;->i:Ljava/lang/String;

    iget-object v3, p0, Lio/boxcar/push/BXCConfig;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, v0, Lio/boxcar/push/BXCConfig;->j:Ljava/lang/String;

    iget-object v3, p0, Lio/boxcar/push/BXCConfig;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, v0, Lio/boxcar/push/BXCConfig;->h:Ljava/lang/String;

    iget-object v3, p0, Lio/boxcar/push/BXCConfig;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMode()Lio/boxcar/push/model/BXCRegistration$a;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lio/boxcar/push/BXCConfig;->a:Lio/boxcar/push/model/BXCRegistration$a;

    return-object v0
.end method

.method public getNotificationStrategy()Lio/boxcar/push/ui/BXCNotificationStrategy;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lio/boxcar/push/BXCConfig;->c:Lio/boxcar/push/ui/BXCNotificationStrategy;

    return-object v0
.end method

.method public getPushClientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lio/boxcar/push/BXCConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPushClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lio/boxcar/push/BXCConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPushHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lio/boxcar/push/BXCConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPushPort()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lio/boxcar/push/BXCConfig;->f:I

    return v0
.end method

.method public getPushScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lio/boxcar/push/BXCConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRichPushBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lio/boxcar/push/BXCConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lio/boxcar/push/BXCConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableUDID()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lio/boxcar/push/BXCConfig;->b:Z

    return v0
.end method

.method public setEnableUDID(Z)V
    .locals 0
    .parameter "enableUDID"

    .prologue
    .line 123
    iput-boolean p1, p0, Lio/boxcar/push/BXCConfig;->b:Z

    .line 124
    return-void
.end method

.method public setNotificationStrategy(Lio/boxcar/push/ui/BXCNotificationStrategy;)V
    .locals 0
    .parameter "notificationStrategy"

    .prologue
    .line 141
    iput-object p1, p0, Lio/boxcar/push/BXCConfig;->c:Lio/boxcar/push/ui/BXCNotificationStrategy;

    .line 142
    return-void
.end method

.method public setPushClientKey(Ljava/lang/String;)V
    .locals 0
    .parameter "pushClientKey"

    .prologue
    .line 173
    iput-object p1, p0, Lio/boxcar/push/BXCConfig;->g:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setPushClientSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "pushClientSecret"

    .prologue
    .line 181
    iput-object p1, p0, Lio/boxcar/push/BXCConfig;->h:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPushHost(Ljava/lang/String;)V
    .locals 0
    .parameter "pushHost"

    .prologue
    .line 157
    iput-object p1, p0, Lio/boxcar/push/BXCConfig;->e:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setPushPort(I)V
    .locals 0
    .parameter "pushPort"

    .prologue
    .line 165
    iput p1, p0, Lio/boxcar/push/BXCConfig;->f:I

    .line 166
    return-void
.end method

.method public setPushScheme(Ljava/lang/String;)V
    .locals 0
    .parameter "pushScheme"

    .prologue
    .line 149
    iput-object p1, p0, Lio/boxcar/push/BXCConfig;->d:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setRegistrationMode(Lio/boxcar/push/model/BXCRegistration$a;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 107
    iput-object p1, p0, Lio/boxcar/push/BXCConfig;->a:Lio/boxcar/push/model/BXCRegistration$a;

    .line 108
    return-void
.end method

.method public setRichPushBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "richPushBaseUrl"

    .prologue
    .line 197
    iput-object p1, p0, Lio/boxcar/push/BXCConfig;->i:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 0
    .parameter "senderId"

    .prologue
    .line 213
    iput-object p1, p0, Lio/boxcar/push/BXCConfig;->j:Ljava/lang/String;

    .line 214
    return-void
.end method
