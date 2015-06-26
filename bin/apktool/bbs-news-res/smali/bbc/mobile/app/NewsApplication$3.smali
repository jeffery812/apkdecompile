.class Lbbc/mobile/app/NewsApplication$3;
.super Ljava/lang/Object;
.source "NewsApplication.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/app/NewsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/app/NewsApplication;


# direct methods
.method constructor <init>(Lbbc/mobile/app/NewsApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/app/NewsApplication$3;->this$0:Lbbc/mobile/app/NewsApplication;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 270
    iget-object v2, p0, Lbbc/mobile/app/NewsApplication$3;->this$0:Lbbc/mobile/app/NewsApplication;

    sget v3, Lbbc/mobile/news/R$string;->pref_key_updates_enabled:I

    invoke-virtual {v2, v3}, Lbbc/mobile/app/NewsApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lbbc/mobile/app/NewsApplication$3;->this$0:Lbbc/mobile/app/NewsApplication;

    iget-object v3, p0, Lbbc/mobile/app/NewsApplication$3;->this$0:Lbbc/mobile/app/NewsApplication;

    invoke-virtual {v3}, Lbbc/mobile/app/NewsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    #calls: Lbbc/mobile/app/NewsApplication;->scheduleUpdateService(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    invoke-static {v2, v3, p1}, Lbbc/mobile/app/NewsApplication;->access$0(Lbbc/mobile/app/NewsApplication;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v2, p0, Lbbc/mobile/app/NewsApplication$3;->this$0:Lbbc/mobile/app/NewsApplication;

    sget v3, Lbbc/mobile/news/R$string;->pref_key_update_frequency:I

    invoke-virtual {v2, v3}, Lbbc/mobile/app/NewsApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    iget-object v2, p0, Lbbc/mobile/app/NewsApplication$3;->this$0:Lbbc/mobile/app/NewsApplication;

    iget-object v3, p0, Lbbc/mobile/app/NewsApplication$3;->this$0:Lbbc/mobile/app/NewsApplication;

    invoke-virtual {v3}, Lbbc/mobile/app/NewsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    #calls: Lbbc/mobile/app/NewsApplication;->scheduleUpdateService(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    invoke-static {v2, v3, p1}, Lbbc/mobile/app/NewsApplication;->access$0(Lbbc/mobile/app/NewsApplication;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v2, p0, Lbbc/mobile/app/NewsApplication$3;->this$0:Lbbc/mobile/app/NewsApplication;

    sget v3, Lbbc/mobile/news/R$string;->pref_key_stats_enabled:I

    invoke-virtual {v2, v3}, Lbbc/mobile/app/NewsApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    .line 278
    .local v1, stats:Lbbc/mobile/news/stats/Stats;
    const/4 v2, 0x1

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 279
    .local v0, isStatsEnabled:Z
    if-eqz v0, :cond_3

    .line 280
    invoke-static {}, Lbbc/mobile/app/NewsApplication;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "States enabled"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_3
    invoke-static {}, Lbbc/mobile/app/NewsApplication;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "States disabled ... clearing beacon device id"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lbbc/mobile/app/NewsApplication;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Generating new device ID..."

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lbbc/mobile/app/NewsApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/stats/Stats;->resetBeaconDeviceId(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;

    goto :goto_0

    .line 288
    .end local v0           #isStatsEnabled:Z
    .end local v1           #stats:Lbbc/mobile/news/stats/Stats;
    :cond_4
    iget-object v2, p0, Lbbc/mobile/app/NewsApplication$3;->this$0:Lbbc/mobile/app/NewsApplication;

    sget v3, Lbbc/mobile/news/R$string;->pref_key_allow_orientations:I

    invoke-virtual {v2, v3}, Lbbc/mobile/app/NewsApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const-string v2, "orientation-lock"

    const-string v3, "orientation lock changed"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
