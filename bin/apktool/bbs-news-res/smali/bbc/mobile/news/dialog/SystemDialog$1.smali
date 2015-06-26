.class Lbbc/mobile/news/dialog/SystemDialog$1;
.super Ljava/lang/Object;
.source "SystemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/dialog/SystemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 130
    move-object v2, p1

    check-cast v2, Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, context:Landroid/content/Context;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    move v1, v3

    .line 132
    .local v1, pushEnabled:Z
    :goto_0
    invoke-static {v0, v3}, Lbbc/mobile/news/util/GlobalSettings;->setRequestedPushPermission(Landroid/content/Context;Z)V

    .line 133
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbbc/mobile/news/stats/Stats;->logPushPermissionResponse(Z)Lbbc/mobile/news/stats/Stats;

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 135
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lbbc/mobile/app/NewsApplication;

    invoke-static {v2}, Lbbc/mobile/news/push/PushUtils;->register(Lbbc/mobile/app/NewsApplication;)V

    .line 138
    :cond_0
    return-void

    .line 131
    .end local v1           #pushEnabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
