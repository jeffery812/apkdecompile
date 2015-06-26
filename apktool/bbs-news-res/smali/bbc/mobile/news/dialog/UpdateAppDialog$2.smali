.class Lbbc/mobile/news/dialog/UpdateAppDialog$2;
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

.field private final synthetic val$force:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-boolean p1, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$2;->val$force:Z

    iput-object p2, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$2;->val$activity:Landroid/app/Activity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 86
    iget-boolean v0, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$2;->val$force:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
