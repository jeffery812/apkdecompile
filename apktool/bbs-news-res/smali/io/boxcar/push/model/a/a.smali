.class public final Lio/boxcar/push/model/a/a;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    sput-object v0, Lio/boxcar/push/model/a/a;->a:Ljava/util/Map;

    const-string v1, "i"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lio/boxcar/push/model/a/a;->a:Ljava/util/Map;

    const-string v1, "f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lio/boxcar/push/model/a/a;->a:Ljava/util/Map;

    const-string v1, "u"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lio/boxcar/push/model/a/a;->a:Ljava/util/Map;

    const-string v1, "aps-alert"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lio/boxcar/push/model/a/a;->a:Ljava/util/Map;

    const-string v1, "aps-badge"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lio/boxcar/push/model/a/a;->a:Ljava/util/Map;

    const-string v1, "aps-sound"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lio/boxcar/push/model/BXCNotification;
    .locals 14
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "aps-alert"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, body:Ljava/lang/String;
    const/4 v5, 0x0

    .line 44
    .local v5, badge:I
    const-string v0, "aps-badge"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 46
    .local v9, badgeStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 48
    :goto_0
    const-string v0, "aps-sound"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, sound:Ljava/lang/String;
    const-string v0, "i"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, id:Ljava/lang/String;
    const-string v0, "f"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 52
    .local v10, flag:Ljava/lang/String;
    const/4 v3, 0x0

    .line 53
    .local v3, richPush:Z
    if-eqz v10, :cond_0

    .line 54
    const-string v0, "1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 57
    :cond_0
    const-string v0, "u"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, url:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 59
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 64
    :goto_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v8, extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 67
    .local v12, key:Ljava/lang/String;
    sget-object v0, Lio/boxcar/push/model/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 69
    .local v13, value:Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 61
    .end local v8           #extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 73
    .restart local v8       #extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 75
    .local v7, timestamp:Ljava/util/Date;
    new-instance v0, Lio/boxcar/push/model/BXCNotification;

    invoke-direct/range {v0 .. v8}, Lio/boxcar/push/model/BXCNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/HashMap;)V

    return-object v0

    .end local v1           #id:Ljava/lang/String;
    .end local v3           #richPush:Z
    .end local v4           #url:Ljava/lang/String;
    .end local v6           #sound:Ljava/lang/String;
    .end local v7           #timestamp:Ljava/util/Date;
    .end local v8           #extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #flag:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    goto :goto_0
.end method
