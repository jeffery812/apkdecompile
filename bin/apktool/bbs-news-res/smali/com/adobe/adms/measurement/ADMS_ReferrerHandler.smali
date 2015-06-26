.class public final Lcom/adobe/adms/measurement/ADMS_ReferrerHandler;
.super Ljava/lang/Object;
.source "ADMS_ReferrerHandler.java"


# static fields
.field static final REFERRER_FIELDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "utm_source"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "utm_medium"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "utm_term"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "utm_content"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "utm_campaign"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_ReferrerHandler;->REFERRER_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 18
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance(Landroid/content/Context;)Lcom/adobe/adms/measurement/ADMS_Measurement;

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 26
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 27
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_2
    const-string v10, "referrer"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    .local v8, referrerURL:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 36
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v7, referrerFields:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "&"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v5, v0, v4

    .line 39
    .local v5, item:Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 41
    .local v9, tokens:[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 42
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 29
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #i$:I
    .end local v5           #item:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #referrerFields:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #referrerURL:Ljava/lang/String;
    .end local v9           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 45
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #referrerFields:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #referrerURL:Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_ReferrerHandler;->REFERRER_FIELDS:[Ljava/lang/String;

    array-length v6, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_6

    aget-object v3, v0, v4

    .line 46
    .local v3, field:Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 47
    sget-object v11, Lcom/adobe/adms/measurement/ADMS_Measurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v11, v3, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 51
    .end local v3           #field:Ljava/lang/String;
    :cond_6
    sget-object v10, Lcom/adobe/adms/measurement/ADMS_Measurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
