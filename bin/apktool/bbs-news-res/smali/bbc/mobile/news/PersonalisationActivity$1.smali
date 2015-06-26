.class Lbbc/mobile/news/PersonalisationActivity$1;
.super Ljava/lang/Object;
.source "PersonalisationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/PersonalisationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/PersonalisationActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/PersonalisationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/PersonalisationActivity$1;->this$0:Lbbc/mobile/news/PersonalisationActivity;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lbbc/mobile/news/PersonalisationActivity$1;->this$0:Lbbc/mobile/news/PersonalisationActivity;

    const/4 v1, 0x1

    #calls: Lbbc/mobile/news/PersonalisationActivity;->setResultAndFinish(Z)V
    invoke-static {v0, v1}, Lbbc/mobile/news/PersonalisationActivity;->access$0(Lbbc/mobile/news/PersonalisationActivity;Z)V

    .line 68
    return-void
.end method
