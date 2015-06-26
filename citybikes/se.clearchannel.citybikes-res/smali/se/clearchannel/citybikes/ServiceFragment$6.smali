.class Lse/clearchannel/citybikes/ServiceFragment$6;
.super Ljava/lang/Object;
.source "ServiceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/ServiceFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/ServiceFragment;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/ServiceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$6;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 294
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$6;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lse/clearchannel/citybikes/ServiceFragment;->access$602(Lse/clearchannel/citybikes/ServiceFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    return-void
.end method
