.class Lse/clearchannel/citybikes/MainActivity$DownloadOfflineMapTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadOfflineMapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/MainActivity;


# direct methods
.method private constructor <init>(Lse/clearchannel/citybikes/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lse/clearchannel/citybikes/MainActivity$DownloadOfflineMapTask;->this$0:Lse/clearchannel/citybikes/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/clearchannel/citybikes/MainActivity;Lse/clearchannel/citybikes/MainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lse/clearchannel/citybikes/MainActivity$DownloadOfflineMapTask;-><init>(Lse/clearchannel/citybikes/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lse/clearchannel/citybikes/MainActivity$DownloadOfflineMapTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "voids"

    .prologue
    .line 302
    iget-object v0, p0, Lse/clearchannel/citybikes/MainActivity$DownloadOfflineMapTask;->this$0:Lse/clearchannel/citybikes/MainActivity;

    invoke-static {v0}, Lse/clearchannel/citybikes/api/FileHandler;->DownloadFromUrl(Landroid/content/Context;)V

    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 308
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 309
    return-void
.end method
