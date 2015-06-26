.class public Lio/boxcar/push/model/BXCRegistration;
.super Ljava/lang/Object;
.source "BXCRegistration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/boxcar/push/model/BXCRegistration$a;
    }
.end annotation


# instance fields
.field private a:Lio/boxcar/push/model/BXCRegistration$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Date;

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lio/boxcar/push/model/BXCRegistration$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "username"
    .parameter "udid"
    .parameter "expires"
    .parameter "mode"
    .parameter "push"
    .parameter "appVersion"
    .parameter "osVersion"
    .parameter "senderIdHash"

    .prologue
    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/boxcar/push/model/BXCRegistration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lio/boxcar/push/model/BXCRegistration$a;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lio/boxcar/push/model/BXCRegistration$a;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "udid"
    .parameter "expires"
    .parameter "mode"
    .parameter "push"
    .parameter
    .parameter "appVersion"
    .parameter "osVersion"
    .parameter "senderIdHash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lio/boxcar/push/model/BXCRegistration$a;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p6, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lio/boxcar/push/model/BXCRegistration;->b:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lio/boxcar/push/model/BXCRegistration;->d:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lio/boxcar/push/model/BXCRegistration;->g:Ljava/util/Date;

    .line 58
    iput-object p4, p0, Lio/boxcar/push/model/BXCRegistration;->a:Lio/boxcar/push/model/BXCRegistration$a;

    .line 59
    iput-boolean p5, p0, Lio/boxcar/push/model/BXCRegistration;->h:Z

    .line 60
    iput-object p6, p0, Lio/boxcar/push/model/BXCRegistration;->i:Ljava/util/List;

    .line 61
    iput-object p7, p0, Lio/boxcar/push/model/BXCRegistration;->e:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lio/boxcar/push/model/BXCRegistration;->f:Ljava/lang/String;

    .line 63
    iput-object p9, p0, Lio/boxcar/push/model/BXCRegistration;->j:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Lio/boxcar/push/model/BXCRegistration$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "username"
    .parameter "expires"
    .parameter "mode"
    .parameter "push"
    .parameter "appVersion"
    .parameter "osVersion"
    .parameter "senderIdHash"

    .prologue
    .line 35
    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lio/boxcar/push/model/BXCRegistration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lio/boxcar/push/model/BXCRegistration$a;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Lio/boxcar/push/model/BXCRegistration$a;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "username"
    .parameter "expires"
    .parameter "mode"
    .parameter "push"
    .parameter
    .parameter "appVersion"
    .parameter "osVersion"
    .parameter "senderIdHash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lio/boxcar/push/model/BXCRegistration$a;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p5, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/boxcar/push/model/BXCRegistration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lio/boxcar/push/model/BXCRegistration$a;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lio/boxcar/push/model/BXCRegistration;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lio/boxcar/push/model/BXCRegistration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lio/boxcar/push/model/BXCRegistration;->g:Ljava/util/Date;

    return-object v0
.end method

.method public getMode()Lio/boxcar/push/model/BXCRegistration$a;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lio/boxcar/push/model/BXCRegistration;->a:Lio/boxcar/push/model/BXCRegistration$a;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lio/boxcar/push/model/BXCRegistration;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lio/boxcar/push/model/BXCRegistration;->i:Ljava/util/List;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lio/boxcar/push/model/BXCRegistration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lio/boxcar/push/model/BXCRegistration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isPush()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lio/boxcar/push/model/BXCRegistration;->h:Z

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 124
    iput-object p1, p0, Lio/boxcar/push/model/BXCRegistration;->c:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .parameter "udid"

    .prologue
    .line 132
    iput-object p1, p0, Lio/boxcar/push/model/BXCRegistration;->d:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v2, json:Lorg/json/JSONObject;
    const-string v5, "mode"

    iget-object v6, p0, Lio/boxcar/push/model/BXCRegistration;->a:Lio/boxcar/push/model/BXCRegistration$a;

    invoke-virtual {v6}, Lio/boxcar/push/model/BXCRegistration$a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v5, "push"

    iget-boolean v6, p0, Lio/boxcar/push/model/BXCRegistration;->h:Z

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 73
    iget-object v5, p0, Lio/boxcar/push/model/BXCRegistration;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 74
    const-string v5, "alias"

    iget-object v6, p0, Lio/boxcar/push/model/BXCRegistration;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_0
    iget-object v5, p0, Lio/boxcar/push/model/BXCRegistration;->c:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 78
    const-string v5, "name"

    iget-object v6, p0, Lio/boxcar/push/model/BXCRegistration;->c:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_1
    iget-object v5, p0, Lio/boxcar/push/model/BXCRegistration;->d:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 82
    const-string v5, "udid"

    iget-object v6, p0, Lio/boxcar/push/model/BXCRegistration;->d:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_2
    iget-object v5, p0, Lio/boxcar/push/model/BXCRegistration;->e:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 86
    const-string v5, "app_version"

    iget-object v6, p0, Lio/boxcar/push/model/BXCRegistration;->e:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    :cond_3
    iget-object v5, p0, Lio/boxcar/push/model/BXCRegistration;->f:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 90
    const-string v5, "os_version"

    iget-object v6, p0, Lio/boxcar/push/model/BXCRegistration;->f:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_4
    iget-object v5, p0, Lio/boxcar/push/model/BXCRegistration;->j:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 94
    const-string v5, "sid"

    iget-object v6, p0, Lio/boxcar/push/model/BXCRegistration;->j:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    :cond_5
    iget-object v5, p0, Lio/boxcar/push/model/BXCRegistration;->g:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 98
    .local v0, expiresInSecs:Ljava/lang/Long;
    const-string v5, "expires"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object v5, p0, Lio/boxcar/push/model/BXCRegistration;->i:Ljava/util/List;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lio/boxcar/push/model/BXCRegistration;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 101
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 102
    .local v4, tagArray:Lorg/json/JSONArray;
    iget-object v5, p0, Lio/boxcar/push/model/BXCRegistration;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 103
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 105
    .end local v3           #tag:Ljava/lang/String;
    :cond_6
    const-string v5, "tags"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #tagArray:Lorg/json/JSONArray;
    :cond_7
    return-object v2
.end method
