.class Lbbc/mobile/news/SettingsActivity$3;
.super Lbbc/mobile/news/push/PushUtils$SimpleBXCCallback;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/SettingsActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/SettingsActivity$3;->this$0:Lbbc/mobile/news/SettingsActivity;

    .line 203
    invoke-direct {p0}, Lbbc/mobile/news/push/PushUtils$SimpleBXCCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public registrationFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "th"

    .prologue
    .line 219
    const-string v0, "PUSH"

    const-string v1, "Settings register failed"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity$3;->this$0:Lbbc/mobile/news/SettingsActivity;

    #calls: Lbbc/mobile/news/SettingsActivity;->resetPushPrefState()V
    invoke-static {v0}, Lbbc/mobile/news/SettingsActivity;->access$1(Lbbc/mobile/news/SettingsActivity;)V

    .line 221
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity$3;->this$0:Lbbc/mobile/news/SettingsActivity;

    iget-object v1, p0, Lbbc/mobile/news/SettingsActivity$3;->this$0:Lbbc/mobile/news/SettingsActivity;

    .line 222
    sget v2, Lbbc/mobile/news/R$string;->pref_push_register_failed:I

    .line 221
    invoke-virtual {v1, v2}, Lbbc/mobile/news/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    const/4 v2, 0x1

    .line 221
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    return-void
.end method

.method public registrationSuccess()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "PUSH"

    const-string v1, "Settings register success"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity$3;->this$0:Lbbc/mobile/news/SettingsActivity;

    #calls: Lbbc/mobile/news/SettingsActivity;->resetPushPrefState()V
    invoke-static {v0}, Lbbc/mobile/news/SettingsActivity;->access$1(Lbbc/mobile/news/SettingsActivity;)V

    .line 209
    return-void
.end method

.method public unregisterFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "th"

    .prologue
    .line 227
    const-string v0, "PUSH"

    const-string v1, "Settings unregister failed"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity$3;->this$0:Lbbc/mobile/news/SettingsActivity;

    #calls: Lbbc/mobile/news/SettingsActivity;->resetPushPrefState()V
    invoke-static {v0}, Lbbc/mobile/news/SettingsActivity;->access$1(Lbbc/mobile/news/SettingsActivity;)V

    .line 229
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity$3;->this$0:Lbbc/mobile/news/SettingsActivity;

    iget-object v1, p0, Lbbc/mobile/news/SettingsActivity$3;->this$0:Lbbc/mobile/news/SettingsActivity;

    .line 230
    sget v2, Lbbc/mobile/news/R$string;->pref_push_unregister_failed:I

    .line 229
    invoke-virtual {v1, v2}, Lbbc/mobile/news/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    const/4 v2, 0x1

    .line 229
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    return-void
.end method

.method public unregisterSuccess()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "PUSH"

    const-string v1, "Settings unregister success"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity$3;->this$0:Lbbc/mobile/news/SettingsActivity;

    #calls: Lbbc/mobile/news/SettingsActivity;->resetPushPrefState()V
    invoke-static {v0}, Lbbc/mobile/news/SettingsActivity;->access$1(Lbbc/mobile/news/SettingsActivity;)V

    .line 215
    return-void
.end method
