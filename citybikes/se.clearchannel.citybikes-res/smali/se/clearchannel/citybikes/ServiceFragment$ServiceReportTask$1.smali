.class Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask$1;
.super Ljava/lang/Object;
.source "ServiceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask$1;->this$1:Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 629
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask$1;->this$1:Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;

    iget-object v0, v0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #calls: Lse/clearchannel/citybikes/ServiceFragment;->resetForm()V
    invoke-static {v0}, Lse/clearchannel/citybikes/ServiceFragment;->access$1000(Lse/clearchannel/citybikes/ServiceFragment;)V

    .line 630
    return-void
.end method
