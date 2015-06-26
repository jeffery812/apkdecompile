.class public Lbbc/mobile/news/webclient/BootstrapManager;
.super Ljava/lang/Object;
.source "BootstrapManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbbc/mobile/news/webclient/BootstrapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/webclient/BootstrapManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final downloadConfig(Landroid/content/Context;)Lbbc/mobile/news/model/Config;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 63
    :try_start_0
    sget-object v7, Lbbc/mobile/news/helper/NewsServiceConstants;->BOOTSTRAP_URI:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v7}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, url:Ljava/lang/String;
    new-instance v5, Lbbc/mobile/news/webclient/WebClient;

    const/4 v7, 0x1

    invoke-direct {v5, v4, v7}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 65
    .local v5, webClient:Lbbc/mobile/news/webclient/WebClient;
    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lbbc/mobile/news/webclient/WebClient;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 67
    .local v2, inputStream:Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 69
    sget-object v7, Lbbc/mobile/news/webclient/BootstrapManager;->TAG:Ljava/lang/String;

    const-string v8, "JSON data fail (no input stream)"

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 87
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :goto_0
    return-object v0

    .line 73
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v4       #url:Ljava/lang/String;
    .restart local v5       #webClient:Lbbc/mobile/news/webclient/WebClient;
    :cond_0
    invoke-virtual {v5, v2}, Lbbc/mobile/news/webclient/WebClient;->parseAsJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v3

    .line 75
    .local v3, json:Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 77
    sget-object v7, Lbbc/mobile/news/webclient/BootstrapManager;->TAG:Ljava/lang/String;

    const-string v8, "JSON data fail (no json)"

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p0, v3}, Lbbc/mobile/news/model/Config;->fromJSONObject(Landroid/content/Context;Lorg/json/JSONObject;)Lbbc/mobile/news/model/Config;

    move-result-object v0

    .line 82
    .local v0, config:Lbbc/mobile/news/model/Config;
    invoke-static {p0, v0}, Lbbc/mobile/news/webclient/BootstrapManager;->setCachedConfig(Landroid/content/Context;Lbbc/mobile/news/model/Config;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v0           #config:Lbbc/mobile/news/model/Config;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v6

    .line 87
    goto :goto_0
.end method

.method public static final getPersonalised(Landroid/content/Context;I)Lbbc/mobile/news/model/Config;
    .locals 4
    .parameter "context"
    .parameter "strategy"

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, config:Lbbc/mobile/news/model/Config;
    packed-switch p1, :pswitch_data_0

    .line 45
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 47
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getPersonalisation(Landroid/content/Context;)Lbbc/mobile/news/model/Personalisation;

    move-result-object v1

    .line 48
    .local v1, perso:Lbbc/mobile/news/model/Personalisation;
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Config;->applyPersonalisation(Lbbc/mobile/news/model/Personalisation;)V

    .line 55
    .end local v0           #config:Lbbc/mobile/news/model/Config;
    .end local v1           #perso:Lbbc/mobile/news/model/Personalisation;
    :cond_1
    :goto_1
    return-object v0

    .line 29
    .restart local v0       #config:Lbbc/mobile/news/model/Config;
    :pswitch_0
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getCachedConfig(Landroid/content/Context;)Lbbc/mobile/news/model/Config;

    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    invoke-static {p0}, Lbbc/mobile/news/webclient/BootstrapManager;->downloadConfig(Landroid/content/Context;)Lbbc/mobile/news/model/Config;

    move-result-object v0

    .line 32
    goto :goto_0

    .line 36
    :pswitch_1
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getCachedConfig(Landroid/content/Context;)Lbbc/mobile/news/model/Config;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_2
    invoke-static {p0}, Lbbc/mobile/news/webclient/BootstrapManager;->downloadConfig(Landroid/content/Context;)Lbbc/mobile/news/model/Config;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_2
    sget-object v2, Lbbc/mobile/news/webclient/BootstrapManager;->TAG:Ljava/lang/String;

    const-string v3, "getPersonalised() returning null"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    goto :goto_1

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static final setCachedConfig(Landroid/content/Context;Lbbc/mobile/news/model/Config;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 93
    invoke-static {p0, p1}, Lbbc/mobile/news/util/GlobalSettings;->setPersonalisedConfig(Landroid/content/Context;Lbbc/mobile/news/model/Config;)V

    .line 94
    return-void
.end method
