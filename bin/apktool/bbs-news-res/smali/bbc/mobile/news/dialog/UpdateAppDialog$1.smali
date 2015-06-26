.class Lbbc/mobile/news/dialog/UpdateAppDialog$1;
.super Ljava/lang/Object;
.source "UpdateAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/dialog/UpdateAppDialog;->build(Landroid/app/Activity;IIZ)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1;->val$appName:Ljava/lang/String;

    iput-object p2, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1;->val$activity:Landroid/app/Activity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "market://search?q=pname:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1;->val$appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 44
    .local v4, marketUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 48
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 50
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 54
    :try_start_0
    iget-object v6, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1;->val$activity:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    iget-object v6, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    sget v6, Lbbc/mobile/news/R$string;->update_market_title:I

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 66
    sget v6, Lbbc/mobile/news/R$string;->update_market_message:I

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 67
    sget v6, Lbbc/mobile/news/R$string;->ok:I

    new-instance v7, Lbbc/mobile/news/dialog/UpdateAppDialog$1$1;

    iget-object v8, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v7, p0, v8}, Lbbc/mobile/news/dialog/UpdateAppDialog$1$1;-><init>(Lbbc/mobile/news/dialog/UpdateAppDialog$1;Landroid/app/Activity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 76
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 57
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
