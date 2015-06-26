.class Lbbc/mobile/news/dialog/UpdateAppDialog$1$1;
.super Ljava/lang/Object;
.source "UpdateAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/dialog/UpdateAppDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbbc/mobile/news/dialog/UpdateAppDialog$1;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/dialog/UpdateAppDialog$1;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1$1;->this$1:Lbbc/mobile/news/dialog/UpdateAppDialog$1;

    iput-object p2, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1$1;->val$activity:Landroid/app/Activity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 71
    iget-object v0, p0, Lbbc/mobile/news/dialog/UpdateAppDialog$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 72
    return-void
.end method
