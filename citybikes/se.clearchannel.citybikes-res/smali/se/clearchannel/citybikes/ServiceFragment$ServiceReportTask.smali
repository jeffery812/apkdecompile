.class public Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;
.super Landroid/os/AsyncTask;
.source "ServiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/ServiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceReportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final ERROR:Ljava/lang/Integer;

.field private final SUCCESS:Ljava/lang/Integer;

.field final synthetic this$0:Lse/clearchannel/citybikes/ServiceFragment;


# direct methods
.method public constructor <init>(Lse/clearchannel/citybikes/ServiceFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 578
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->SUCCESS:Ljava/lang/Integer;

    .line 579
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->ERROR:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .parameter "voids"

    .prologue
    .line 593
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 594
    .local v1, formData:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "problem"

    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->selectedItemsContent:Ljava/lang/String;
    invoke-static {v5}, Lse/clearchannel/citybikes/ServiceFragment;->access$800(Lse/clearchannel/citybikes/ServiceFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/springframework/util/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    const-string v4, "station"

    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->serviceLocationSpinner:Landroid/widget/Spinner;
    invoke-static {v5}, Lse/clearchannel/citybikes/ServiceFragment;->access$200(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/springframework/util/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    const-string v4, "lock"

    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumber:Ljava/lang/String;
    invoke-static {v5}, Lse/clearchannel/citybikes/ServiceFragment;->access$600(Lse/clearchannel/citybikes/ServiceFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/springframework/util/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    iget-object v4, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->otherInfo:Landroid/widget/EditText;
    invoke-static {v4}, Lse/clearchannel/citybikes/ServiceFragment;->access$900(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, info:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 600
    const-string v4, "information"

    invoke-interface {v1, v4, v2}, Lorg/springframework/util/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 602
    :cond_0
    iget-object v4, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->fileUri:Landroid/net/Uri;
    invoke-static {v4}, Lse/clearchannel/citybikes/ServiceFragment;->access$000(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 603
    const-string v4, "picture"

    new-instance v5, Lorg/springframework/core/io/FileSystemResource;

    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->fileUri:Landroid/net/Uri;
    invoke-static {v6}, Lse/clearchannel/citybikes/ServiceFragment;->access$000(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/springframework/core/io/FileSystemResource;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4, v5}, Lorg/springframework/util/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    :cond_1
    :try_start_0
    new-instance v3, Lse/clearchannel/citybikes/api/RestApiClient;

    invoke-direct {v3}, Lse/clearchannel/citybikes/api/RestApiClient;-><init>()V

    .line 608
    .local v3, restApiClient:Lse/clearchannel/citybikes/api/RestApiClient;
    invoke-virtual {v3, v1}, Lse/clearchannel/citybikes/api/RestApiClient;->sendServiceReport(Lorg/springframework/util/MultiValueMap;)V

    .line 609
    iget-object v4, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->SUCCESS:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v3           #restApiClient:Lse/clearchannel/citybikes/api/RestApiClient;
    :goto_0
    return-object v4

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->ERROR:Ljava/lang/Integer;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 576
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 583
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 584
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/ServiceFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/ServiceFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 588
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10
    .parameter "result"

    .prologue
    const v9, 0x7f0b004b

    const/4 v8, 0x0

    .line 618
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    iget-object v5, v5, Lse/clearchannel/citybikes/ServiceFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_0

    .line 620
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    iget-object v5, v5, Lse/clearchannel/citybikes/ServiceFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 622
    :cond_0
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->SUCCESS:Ljava/lang/Integer;

    if-ne p1, v5, :cond_2

    .line 623
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v5}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 624
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b0055

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0056

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "OK"

    new-instance v7, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask$1;

    invoke-direct {v7, p0}, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask$1;-><init>(Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 632
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 633
    .local v0, alert:Landroid/app/AlertDialog;
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v5}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    const v7, 0x7f0b0049

    invoke-virtual {v6, v7}, Lse/clearchannel/citybikes/ServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 634
    .local v4, sharedPref:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v5, v9}, Lse/clearchannel/citybikes/ServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 635
    .local v3, numberOfReports:I
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 636
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 638
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    const v6, 0x7f0b004a

    invoke-virtual {v5, v6}, Lse/clearchannel/citybikes/ServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 640
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 644
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v5, v9}, Lse/clearchannel/citybikes/ServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 645
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 646
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 651
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #numberOfReports:I
    .end local v4           #sharedPref:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 648
    :cond_2
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v5}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0b0030

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 576
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
