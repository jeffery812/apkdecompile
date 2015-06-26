.class Lbbc/mobile/news/dialog/SystemDialog$3;
.super Ljava/lang/Object;
.source "SystemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/dialog/SystemDialog;->showStatic(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$close:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-boolean p1, p0, Lbbc/mobile/news/dialog/SystemDialog$3;->val$close:Z

    iput-object p2, p0, Lbbc/mobile/news/dialog/SystemDialog$3;->val$activity:Landroid/app/Activity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 55
    iget-boolean v0, p0, Lbbc/mobile/news/dialog/SystemDialog$3;->val$close:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lbbc/mobile/news/dialog/SystemDialog$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 58
    :cond_0
    return-void
.end method
