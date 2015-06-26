.class Lbbc/mobile/news/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/BaseActivity;->checkPolicies()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/BaseActivity;

.field private final synthetic val$policy:Lbbc/mobile/news/model/Policy;


# direct methods
.method constructor <init>(Lbbc/mobile/news/BaseActivity;Lbbc/mobile/news/model/Policy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/BaseActivity$3;->this$0:Lbbc/mobile/news/BaseActivity;

    iput-object p2, p0, Lbbc/mobile/news/BaseActivity$3;->val$policy:Lbbc/mobile/news/model/Policy;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 629
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity$3;->val$policy:Lbbc/mobile/news/model/Policy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Policy;->setOptionalUpateDismissed(Z)V

    .line 630
    return-void
.end method
