.class public Lbbc/mobile/news/dialog/UpdateAppDialog;
.super Ljava/lang/Object;
.source "UpdateAppDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/app/Activity;IIZ)Landroid/app/AlertDialog;
    .locals 4
    .parameter "activity"
    .parameter "titleResId"
    .parameter "messageResId"
    .parameter "force"

    .prologue
    .line 30
    invoke-static {}, Lbbc/mobile/news/init/DI;->getApplicationPackage()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, appName:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 35
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 36
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 38
    sget v2, Lbbc/mobile/news/R$string;->update_download_now:I

    new-instance v3, Lbbc/mobile/news/dialog/UpdateAppDialog$1;

    invoke-direct {v3, v0, p0}, Lbbc/mobile/news/dialog/UpdateAppDialog$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    sget v2, Lbbc/mobile/news/R$string;->cancel:I

    new-instance v3, Lbbc/mobile/news/dialog/UpdateAppDialog$2;

    invoke-direct {v3, p3, p0}, Lbbc/mobile/news/dialog/UpdateAppDialog$2;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static show(Landroid/app/AlertDialog;)V
    .locals 1
    .parameter "alert"

    .prologue
    .line 102
    if-eqz p0, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method
