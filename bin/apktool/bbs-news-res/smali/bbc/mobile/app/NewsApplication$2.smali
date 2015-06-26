.class Lbbc/mobile/app/NewsApplication$2;
.super Lbbc/mobile/news/push/PushUtils$SimpleBXCCallback;
.source "NewsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/app/NewsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/app/NewsApplication;


# direct methods
.method constructor <init>(Lbbc/mobile/app/NewsApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/app/NewsApplication$2;->this$0:Lbbc/mobile/app/NewsApplication;

    .line 129
    invoke-direct {p0}, Lbbc/mobile/news/push/PushUtils$SimpleBXCCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public registrationFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    const-string v0, "PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registration failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lbbc/mobile/app/NewsApplication$2;->this$0:Lbbc/mobile/app/NewsApplication;

    invoke-virtual {v0}, Lbbc/mobile/app/NewsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lbbc/mobile/app/NewsApplication$2;->this$0:Lbbc/mobile/app/NewsApplication;

    invoke-virtual {v0}, Lbbc/mobile/app/NewsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->setPushEnabled(Landroid/content/Context;Z)V

    .line 152
    :cond_1
    return-void
.end method

.method public registrationSuccess()V
    .locals 4

    .prologue
    .line 135
    :try_start_0
    const-string v1, "PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registration success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/boxcar/push/BXCFacade;->getUDID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    iget-object v1, p0, Lbbc/mobile/app/NewsApplication$2;->this$0:Lbbc/mobile/app/NewsApplication;

    invoke-virtual {v1}, Lbbc/mobile/app/NewsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lbbc/mobile/news/util/GlobalSettings;->setPushEnabled(Landroid/content/Context;Z)V

    .line 141
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Lio/boxcar/push/BXCException;
    const-string v1, "PUSH"

    const-string v2, "Registration success: NO UDID"

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unregisterFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    const-string v0, "PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unregister failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lbbc/mobile/app/NewsApplication$2;->this$0:Lbbc/mobile/app/NewsApplication;

    invoke-virtual {v0}, Lbbc/mobile/app/NewsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lbbc/mobile/app/NewsApplication$2;->this$0:Lbbc/mobile/app/NewsApplication;

    invoke-virtual {v0}, Lbbc/mobile/app/NewsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->setPushEnabled(Landroid/content/Context;Z)V

    .line 170
    :cond_1
    return-void
.end method

.method public unregisterSuccess()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "PUSH"

    const-string v1, "Unregistered from p1push service"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lbbc/mobile/app/NewsApplication$2;->this$0:Lbbc/mobile/app/NewsApplication;

    invoke-virtual {v0}, Lbbc/mobile/app/NewsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->setPushEnabled(Landroid/content/Context;Z)V

    .line 159
    return-void
.end method
