.class public abstract Lcom/adobe/adms/measurement/ADMS_MeasurementBase;
.super Ljava/lang/Object;
.source "ADMS_MeasurementBase.java"


# static fields
.field static debugLogging:Z

.field static keyReplacements:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static prefixReplacements:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static validKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static validLightParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appSection:Ljava/lang/String;

.field private appState:Ljava/lang/String;

.field private campaign:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private charSet:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field protected dataCenter:Ljava/lang/String;

.field protected evarMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/lang/String;

.field private geoState:Ljava/lang/String;

.field private geoZip:Ljava/lang/String;

.field protected hierMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected isOffline:Z

.field private lightIncrementBy:I

.field private lightProfileID:Ljava/lang/String;

.field private lightStoreForSeconds:I

.field private lightTrackVars:Ljava/lang/String;

.field private linkName:Ljava/lang/String;

.field private linkTrackEvents:Ljava/lang/String;

.field private linkTrackVars:Ljava/lang/String;

.field private linkType:Ljava/lang/String;

.field private linkURL:Ljava/lang/String;

.field protected listMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected offlineHitLimit:I

.field protected offlineThrottleDelay:I

.field protected offlineTrackingEnabled:Z

.field protected persistentContextData:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected pevMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private products:Ljava/lang/String;

.field protected propMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseID:Ljava/lang/String;

.field private reportSuiteIDs:Ljava/lang/String;

.field private secRandom:Ljava/security/SecureRandom;

.field protected ssl:Z

.field protected timestamp:J

.field private trackingServer:Ljava/lang/String;

.field private transactionID:Ljava/lang/String;

.field protected userAgent:Ljava/lang/String;

.field protected version:Ljava/lang/String;

.field private visitorID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLogging:Z

    .line 75
    sput-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/Hashtable;

    .line 76
    sput-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    .line 1281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    .line 1593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    .line 30
    iput-boolean v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    .line 33
    iput v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineThrottleDelay:I

    .line 34
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineHitLimit:I

    .line 37
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    .line 50
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    .line 65
    iput v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    .line 66
    iput v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    .line 79
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->userAgent:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    .line 82
    iput-boolean v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isOffline:Z

    .line 85
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;

    .line 1010
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setupDefaults()V

    .line 1011
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "reportSuiteIDs"
    .parameter "trackingServer"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    .line 30
    iput-boolean v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    .line 33
    iput v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineThrottleDelay:I

    .line 34
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineHitLimit:I

    .line 37
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    .line 50
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    .line 65
    iput v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    .line 66
    iput v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    .line 79
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->userAgent:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    .line 82
    iput-boolean v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isOffline:Z

    .line 85
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;

    .line 1015
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setupDefaults()V

    .line 1016
    return-void
.end method

.method private addValueToHashtable(Ljava/lang/Object;Lcom/adobe/adms/measurement/ADMS_ContextData;Ljava/util/ArrayList;I)V
    .locals 4
    .parameter "object"
    .parameter "table"
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/adobe/adms/measurement/ADMS_ContextData;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1474
    .local p3, subKeyArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1475
    .local v0, arrayCount:I
    if-ge p4, v0, :cond_0

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 1476
    .local v2, keyName:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 1494
    :goto_1
    return-void

    .line 1475
    .end local v2           #keyName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1480
    .restart local v2       #keyName:Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/adobe/adms/measurement/ADMS_ContextData;

    invoke-direct {v1}, Lcom/adobe/adms/measurement/ADMS_ContextData;-><init>()V

    .line 1481
    .local v1, data:Lcom/adobe/adms/measurement/ADMS_ContextData;
    invoke-virtual {p2, v2}, Lcom/adobe/adms/measurement/ADMS_ContextData;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1482
    invoke-virtual {p2, v2}, Lcom/adobe/adms/measurement/ADMS_ContextData;->get(Ljava/lang/String;)Lcom/adobe/adms/measurement/ADMS_ContextData;

    move-result-object v1

    .line 1484
    :cond_2
    add-int/lit8 v3, v0, -0x1

    if-ne v3, p4, :cond_3

    .line 1486
    iput-object p1, v1, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    .line 1487
    invoke-virtual {p2, v2, v1}, Lcom/adobe/adms/measurement/ADMS_ContextData;->put(Ljava/lang/String;Lcom/adobe/adms/measurement/ADMS_ContextData;)V

    goto :goto_1

    .line 1491
    :cond_3
    invoke-virtual {p2, v2, v1}, Lcom/adobe/adms/measurement/ADMS_ContextData;->put(Ljava/lang/String;Lcom/adobe/adms/measurement/ADMS_ContextData;)V

    .line 1492
    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->addValueToHashtable(Ljava/lang/Object;Lcom/adobe/adms/measurement/ADMS_ContextData;Ljava/util/ArrayList;I)V

    goto :goto_1
.end method

.method protected static debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "logMessage"

    .prologue
    .line 1502
    sget-boolean v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLogging:Z

    if-eqz v0, :cond_0

    .line 1503
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1505
    :cond_0
    return-void
.end method

.method private isInteger(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 1959
    :try_start_0
    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1962
    :cond_0
    :goto_0
    return v0

    .line 1960
    .restart local p1
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isString(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 1947
    :try_start_0
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1950
    :cond_0
    :goto_0
    return v0

    .line 1948
    .restart local p1
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2023
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2024
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2025
    .local v0, e:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2026
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2029
    .end local v0           #e:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .parameter "value"

    .prologue
    .line 1954
    check-cast p1, Ljava/lang/String;

    .end local p1
    return-object p1
.end method


# virtual methods
.method protected addAllParameters(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1813
    .local p1, masterArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, slaveArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1814
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanParameterKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1816
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 2033
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 2038
    .end local p1
    .local v0, string:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2037
    .end local v0           #string:Ljava/lang/String;
    .restart local p1
    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 2038
    .end local p1
    .restart local v0       #string:Ljava/lang/String;
    goto :goto_0
.end method

.method protected cleanContextKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 1764
    const-string v0, "[^a-zA-Z0-9.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1766
    return-object p1
.end method

.method protected cleanParameterKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"

    .prologue
    .line 1723
    sget-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/Hashtable;

    if-nez v4, :cond_0

    .line 1724
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/Hashtable;

    .line 1725
    sget-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/Hashtable;

    const-string v5, "evar"

    const-string v6, "v"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    sget-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/Hashtable;

    const-string v5, "prop"

    const-string v6, "c"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    sget-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/Hashtable;

    const-string v5, "list"

    const-string v6, "l"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    sget-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/Hashtable;

    const-string v5, "hier"

    const-string v6, "h"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    sget-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/Hashtable;

    const-string v5, "pev"

    const-string v6, "pev"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    :cond_0
    sget-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 1742
    .local v3, prefixKeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1743
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1744
    .local v2, prefix:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1745
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1747
    .local v1, numVal:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 1748
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1759
    .end local v1           #numVal:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1750
    .restart local v1       #numVal:Ljava/lang/String;
    .restart local v2       #prefix:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-object v4, p1

    .line 1751
    goto :goto_0

    .line 1756
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #numVal:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->replaceKeyWithADMSKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    .line 1759
    goto :goto_0
.end method

.method protected clearAllVars()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1520
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    .line 1521
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 1522
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;

    .line 1523
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    .line 1524
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    .line 1526
    iput-boolean v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    .line 1527
    sput-boolean v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLogging:Z

    .line 1528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    .line 1529
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineHitLimit:I

    .line 1530
    iput v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineThrottleDelay:I

    .line 1532
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->clearVars()V

    .line 1533
    return-void
.end method

.method public clearTrackingQueue()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public clearVars()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->resetSingleUseParameters()V

    .line 416
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    .line 417
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    .line 419
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    .line 420
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    .line 421
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    .line 422
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    .line 423
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    .line 424
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    .line 426
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    .line 427
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    .line 429
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    .line 430
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    .line 431
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 434
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 435
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->listMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 436
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->hierMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 438
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 439
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public configureMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "reportSuiteIDs"
    .parameter "trackingServer"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setReportSuiteIDs(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setTrackingServer(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected filterLightTrackParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1228
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, variables:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v5, tempLightTrackVars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v1, constLightTrackVars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1231
    iget-object v9, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    const-string v10, "[,]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1234
    :cond_0
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 1235
    .local v8, varObjs:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_3

    .line 1236
    invoke-virtual {p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 1237
    .local v7, varKeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1238
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1239
    .local v3, key:Ljava/lang/String;
    const-string v9, "lightTrackVars"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1240
    const-string v9, "lightTrackVars"

    invoke-virtual {p3, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1241
    .local v6, value:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1243
    invoke-virtual {p0, v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1244
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1245
    const-string v9, "[,]"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1249
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanParameterKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, cleanKey:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightParameterIsValid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1251
    invoke-virtual {p3, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1256
    .end local v0           #cleanKey:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    .end local v7           #varKeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0, v5, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->addAllParameters(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1257
    invoke-virtual {p0, p1, v8}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1259
    const/4 v2, 0x0

    .line 1260
    .local v2, contextFilter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 1261
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->requiredLightVarList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1263
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 1264
    .local v4, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1265
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1266
    .restart local v3       #key:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1267
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1271
    .end local v3           #key:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->generateFilterArrayWithVars(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1274
    .end local v4           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p0, p1, p2, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->handlePersistentContextData(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/ArrayList;)V

    .line 1275
    return-void
.end method

.method protected filterLinkTrackParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1310
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, variables:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    .local v14, tempLinkTrackVars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    .local v4, constLinkTrackVars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[,]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1316
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v13, tempLinkTrackEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[,]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1321
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v7, eventsToSend:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[,]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1326
    :cond_2
    new-instance v17, Ljava/util/Hashtable;

    invoke-direct/range {v17 .. v17}, Ljava/util/Hashtable;-><init>()V

    .line 1327
    .local v17, varObjs:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_7

    .line 1328
    invoke-virtual/range {p3 .. p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v16

    .line 1329
    .local v16, varKeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1330
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1331
    .local v10, key:Ljava/lang/String;
    const-string v18, "linkTrackEvents"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1332
    const-string v18, "linkTrackEvents"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1333
    .local v15, value:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1335
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1336
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1337
    const-string v18, "[,]"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1341
    .end local v15           #value:Ljava/lang/String;
    :cond_4
    const-string v18, "events"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1342
    const-string v18, "events"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1343
    .restart local v15       #value:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1345
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1346
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1347
    const-string v18, "[,]"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1351
    .end local v15           #value:Ljava/lang/String;
    :cond_5
    const-string v18, "linkTrackVars"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1352
    const-string v18, "linkTrackVars"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1353
    .restart local v15       #value:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1355
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1356
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1357
    const-string v18, "[,]"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 1362
    .end local v15           #value:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanParameterKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1363
    .local v3, cleanKey:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->parameterKeyIsValid(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1364
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1369
    .end local v3           #cleanKey:Ljava/lang/String;
    .end local v10           #key:Ljava/lang/String;
    .end local v16           #varKeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->addAllParameters(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1370
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1371
    const/4 v5, 0x0

    .line 1373
    .local v5, contextFilter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 1374
    .local v12, peValue:Ljava/lang/String;
    const-string v18, "pe"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1375
    const-string v18, "pe"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #peValue:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1377
    .restart local v12       #peValue:Ljava/lang/String;
    :cond_8
    if-eqz p3, :cond_9

    const-string v18, "pe"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1378
    const-string v18, "pe"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #peValue:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1381
    .restart local v12       #peValue:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1382
    :cond_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_d

    .line 1383
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->requiredVarList()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1385
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v11

    .line 1386
    .local v11, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_b
    :goto_1
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1387
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1388
    .restart local v10       #key:Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 1389
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1393
    .end local v10           #key:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->generateFilterArrayWithVars(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1396
    .end local v11           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_f

    .line 1397
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1398
    .local v8, eventsToSendCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1399
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_e
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1400
    .local v6, event:Ljava/lang/String;
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 1401
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1407
    .end local v6           #event:Ljava/lang/String;
    .end local v8           #eventsToSendCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->handlePersistentContextData(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/ArrayList;)V

    .line 1409
    const-string v18, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1410
    return-void
.end method

.method protected generateFilterArrayWithVars(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1413
    .local p1, vars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    .local v0, contextFilter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1415
    .local v2, string:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1416
    const-string v3, "contextdata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1417
    const/4 v0, 0x0

    .line 1434
    .end local v0           #contextFilter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #string:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1420
    .restart local v0       #contextFilter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #string:Ljava/lang/String;
    :cond_1
    const-string v3, "contextdata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1421
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1425
    .end local v2           #string:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1426
    const-string v3, "contextdata.a.CarrierName"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    const-string v3, "contextdata.a.OSVersion"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    const-string v3, "contextdata.a.DeviceName"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    const-string v3, "contextdata.a.Resolution"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1431
    :cond_3
    const-string v3, "   "

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected generateLightTrackParameters()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1104
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1106
    .local v0, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ce"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1107
    const-string v1, "mtp"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1108
    const-string v1, "mtss"

    iget v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1109
    const-string v1, "mti"

    iget v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1111
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1112
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1114
    return-object v0
.end method

.method protected generateTrackParameters()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1118
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1120
    .local v0, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "vid"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1121
    const-string v1, "ce"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1122
    const-string v1, "pageName"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1123
    const-string v1, "cc"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1125
    const-string v1, "purchaseID"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1126
    const-string v1, "xact"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1127
    const-string v1, "ch"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1128
    const-string v1, "server"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1129
    const-string v1, "v0"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1130
    const-string v1, "zip"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1131
    const-string v1, "state"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1132
    const-string v1, "products"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1142
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1143
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1144
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->listMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1145
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->hierMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1146
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->pevMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1148
    return-object v0
.end method

.method public getAppSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    return-object v0
.end method

.method public getAppState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getApplicationID()Ljava/lang/String;
.end method

.method public getCampaign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getCarrierString()Ljava/lang/String;
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getDefaultCharSet()Ljava/lang/String;
.end method

.method protected abstract getDefaultUserAgent()Ljava/lang/String;
.end method

.method protected abstract getDefaultVisitorID()Ljava/lang/String;
.end method

.method public getEvar(I)Ljava/lang/String;
    .locals 3
    .parameter "evarNum"

    .prologue
    .line 317
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->evarValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEvents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    return-object v0
.end method

.method protected getFullTrackingServer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1982
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1995
    const-string v0, ""

    .line 1996
    .local v0, reportSuiteID:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    const-string v3, "[,]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1997
    .local v1, rsids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1998
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #reportSuiteID:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2002
    .restart local v0       #reportSuiteID:Ljava/lang/String;
    :cond_0
    const-string v2, "."

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2003
    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2004
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2005
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    .line 2006
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    const-string v3, "dc2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    const-string v3, "122"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2007
    :cond_1
    const-string v2, "122"

    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    .line 2013
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".2o7.net"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 2019
    .end local v0           #reportSuiteID:Ljava/lang/String;
    .end local v1           #rsids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    return-object v2

    .line 2010
    .restart local v0       #reportSuiteID:Ljava/lang/String;
    .restart local v1       #rsids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v2, "112"

    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGeoState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    return-object v0
.end method

.method public getHier(I)Ljava/lang/String;
    .locals 3
    .parameter "hierNum"

    .prologue
    .line 375
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->hierValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->hierMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLightIncrementBy()I
    .locals 1

    .prologue
    .line 1576
    iget v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    return v0
.end method

.method public getLightProfileID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    return-object v0
.end method

.method protected getLightStoreForSeconds()I
    .locals 1

    .prologue
    .line 1568
    iget v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    return v0
.end method

.method public getLightTrackVars()Ljava/lang/String;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    return-object v0
.end method

.method protected getLinkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTrackEvents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTrackVars()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    return-object v0
.end method

.method protected getLinkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method protected getLinkURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    return-object v0
.end method

.method public getListVar(I)Ljava/lang/String;
    .locals 3
    .parameter "listNum"

    .prologue
    .line 404
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->listValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->listMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getNetworkConnectionString()Ljava/lang/String;
.end method

.method public getOfflineHitLimit()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineHitLimit:I

    return v0
.end method

.method public getOfflineThrottleDelay()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineThrottleDelay:I

    return v0
.end method

.method protected abstract getOperatingSystemString()Ljava/lang/String;
.end method

.method public getPersistentContextData()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected abstract getPlatformString()Ljava/lang/String;
.end method

.method public getProducts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    return-object v0
.end method

.method public getProp(I)Ljava/lang/String;
    .locals 3
    .parameter "propNum"

    .prologue
    .line 346
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->propValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPurchaseID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    return-object v0
.end method

.method public getReportSuiteIDs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    return-object v0
.end method

.method protected getRequestString()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1044
    invoke-virtual {p0, v0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getRequestString(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestString(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1048
    .local p1, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, variables:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1049
    const/4 v5, 0x0

    .line 1065
    :goto_0
    return-object v5

    .line 1052
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getTrackingParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    .line 1053
    .local v1, parameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hit Parameters : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 1055
    const/4 v3, 0x0

    .line 1056
    .local v3, randomNumber:I
    iget-object v7, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;

    if-eqz v7, :cond_1

    .line 1057
    iget-object v7, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;

    const v8, 0x5f5e100

    invoke-virtual {v7, v8}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 1059
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, cacheBusting:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->serializeToQueryString(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, parametersSerialized:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getFullTrackingServer()Ljava/lang/String;

    move-result-object v6

    .line 1062
    .local v6, trackServer:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    if-eqz v7, :cond_2

    const-string v4, "https"

    .line 1063
    .local v4, requestProtocol:Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/b/ss/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->version:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?AQB=1&ndh=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&AQE=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1065
    .local v5, requestString:Ljava/lang/String;
    goto/16 :goto_0

    .line 1062
    .end local v4           #requestProtocol:Ljava/lang/String;
    .end local v5           #requestString:Ljava/lang/String;
    :cond_2
    const-string v4, "http"

    goto :goto_1
.end method

.method protected abstract getResolutionString()Ljava/lang/String;
.end method

.method protected getTime()D
    .locals 4

    .prologue
    .line 1585
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1586
    .local v0, tm:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    return-wide v2
.end method

.method protected getTrackingParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, variables:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1075
    .local v0, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validateTechnology()V

    .line 1077
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->generateLightTrackParameters()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1079
    invoke-virtual {p0, v0, p1, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->filterLightTrackParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1080
    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validateRequiredLightVariables(Ljava/util/Hashtable;)V

    .line 1087
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validateTimestamps(Ljava/util/Hashtable;)V

    .line 1088
    return-object v0

    .line 1082
    :cond_0
    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validateLinkTracking(Ljava/util/Hashtable;)V

    .line 1083
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->generateTrackParameters()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1084
    invoke-virtual {p0, v0, p1, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->filterLinkTrackParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1085
    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validateRequiredVariables(Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method public getTrackingQueueSize()I
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackingServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    return-object v0
.end method

.method protected getValidKeys()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x4b

    const/4 v5, 0x3

    .line 1596
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1597
    :try_start_0
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 1598
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "vid"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "ce"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "ns"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "pageName"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "g"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "r"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "cc"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "pe"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "ts"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "t"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "purchaseID"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "ch"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "server"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "pageType"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "xact"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "v0"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "state"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1617
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "zip"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "events"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "products"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "mtsr"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v6, :cond_0

    .line 1623
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1625
    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v6, :cond_1

    .line 1626
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1628
    :cond_1
    const/4 v0, 0x1

    :goto_2
    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 1629
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1631
    :cond_2
    const/4 v0, 0x1

    :goto_3
    if-gt v0, v5, :cond_3

    .line 1632
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "l"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1634
    :cond_3
    const/4 v0, 0x1

    :goto_4
    if-gt v0, v5, :cond_4

    .line 1635
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pev"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1638
    :cond_4
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "c"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    const-string v3, "mtsd"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    .end local v0           #i:I
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/ArrayList;

    return-object v1

    .line 1644
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getValidLightParameters()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x4b

    .line 1285
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1286
    :try_start_0
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1287
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    const-string v3, "ce"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    const-string v3, "ns"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    const-string v3, "cookieDomainPeriods"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    const-string v3, "cookieLifetime"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    const-string v3, "mtp"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    const-string v3, "mtss"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    const-string v3, "mti"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    const-string v3, "mtsd"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    const-string v3, "ts"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v5, :cond_0

    .line 1298
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1300
    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v5, :cond_1

    .line 1301
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1304
    .end local v0           #i:I
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/ArrayList;

    return-object v1

    .line 1304
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitorID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;

    return-object v0
.end method

.method protected handlePersistentContextData(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1438
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, contextFilter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1439
    .local v0, contextWithOverrides:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    monitor-enter v5

    .line 1440
    :try_start_0
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 1441
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    if-eqz p2, :cond_0

    .line 1443
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1444
    .local v2, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1445
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1446
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1447
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanContextKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1441
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3           #value:Ljava/lang/Object;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1451
    :cond_0
    const-string v4, "c"

    invoke-virtual {p0, v0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->translateContextData(Ljava/util/Hashtable;Ljava/util/ArrayList;)Lcom/adobe/adms/measurement/ADMS_ContextData;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1452
    return-void
.end method

.method protected isBoolean(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 1971
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1974
    :cond_0
    :goto_0
    return v0

    .line 1972
    .restart local p1
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isOfflineTrackingEnabled()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    return v0
.end method

.method protected isSet(D)Z
    .locals 3
    .parameter "val"

    .prologue
    .line 1915
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 1916
    const/4 v0, 0x0

    .line 1918
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSet(F)Z
    .locals 4
    .parameter "val"

    .prologue
    .line 1908
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 1909
    const/4 v0, 0x0

    .line 1911
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSet(I)Z
    .locals 1
    .parameter "val"

    .prologue
    .line 1901
    if-nez p1, :cond_0

    .line 1902
    const/4 v0, 0x0

    .line 1904
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSet(Ljava/lang/Object;)Z
    .locals 1
    .parameter "val"

    .prologue
    .line 1932
    if-nez p1, :cond_0

    .line 1933
    const/4 v0, 0x0

    .line 1941
    :goto_0
    return v0

    .line 1934
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1935
    invoke-direct {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1936
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1937
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->toInteger(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(I)Z

    move-result v0

    goto :goto_0

    .line 1938
    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1939
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Z)Z

    move-result v0

    goto :goto_0

    .line 1941
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSet(Ljava/lang/String;)Z
    .locals 2
    .parameter "val"

    .prologue
    const/4 v0, 0x0

    .line 1922
    if-nez p1, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return v0

    .line 1925
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1928
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSet(Z)Z
    .locals 0
    .parameter "val"

    .prologue
    .line 1897
    return p1
.end method

.method protected lightParameterIsValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1278
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getValidLightParameters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected parameterKeyIsValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1590
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getValidKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1691
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, trackOverrides:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    .line 1692
    return-void
.end method

.method protected putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1695
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, trackOverrides:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 1696
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1697
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1698
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1699
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1700
    .local v2, obj:Ljava/lang/Object;
    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 1703
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #obj:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1714
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, trackOverrides:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1715
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1716
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1717
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1718
    .local v2, obj:Ljava/lang/Object;
    invoke-virtual {p0, p1, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1720
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #obj:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected putContextData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1706
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1711
    :cond_0
    :goto_0
    return-void

    .line 1710
    :cond_1
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1650
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1651
    return-void
.end method

.method protected putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "value"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1663
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1664
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1668
    :cond_1
    const/4 v0, 0x1

    .line 1669
    .local v0, valid:Z
    if-eqz p4, :cond_2

    .line 1670
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanParameterKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1671
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->parameterKeyIsValid(Ljava/lang/String;)Z

    move-result v0

    .line 1673
    :cond_2
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1674
    instance-of v3, p3, Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object v1, p3

    .line 1675
    check-cast v1, Ljava/util/ArrayList;

    .line 1676
    .local v1, valueArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1680
    .end local v1           #valueArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :cond_3
    instance-of v3, p3, Ljava/util/Hashtable;

    if-eqz v3, :cond_4

    move-object v2, p3

    .line 1681
    check-cast v2, Ljava/util/Hashtable;

    .line 1682
    .local v2, valueTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1686
    .end local v2           #valueTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    :cond_4
    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected putStringParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1654
    .local p1, stringParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1655
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    :goto_0
    return-void

    .line 1659
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected replaceKeyWithADMSKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 1770
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 1771
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    .line 1772
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "contextdata"

    const-string v3, "c"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "lightprofileid"

    const-string v3, "mtp"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "lightstoreforseconds"

    const-string v3, "mtss"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "lightincrementby"

    const-string v3, "mti"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "retrievelightprofiles"

    const-string v3, "mtsr"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "deletelightprofiles"

    const-string v3, "mtsd"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "visitorid"

    const-string v3, "vid"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "charset"

    const-string v3, "ce"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "currencycode"

    const-string v3, "cc"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "dynamicvariableprefix"

    const-string v3, "D"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "channel"

    const-string v3, "ch"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "pageurl"

    const-string v3, "g"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "visitornamespace"

    const-string v3, "ns"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "referrer"

    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "campaign"

    const-string v3, "v0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "transactionid"

    const-string v3, "xact"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "appstate"

    const-string v3, "pageName"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "pagename"

    const-string v3, "pageName"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "appsection"

    const-string v3, "server"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "geozip"

    const-string v3, "zip"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "geostate"

    const-string v3, "state"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "linkurl"

    const-string v3, "pev1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "linkname"

    const-string v3, "pev2"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "linktype"

    const-string v3, "pe"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "purchaseid"

    const-string v3, "purchaseID"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "events"

    const-string v3, "events"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    const-string v2, "products"

    const-string v3, "products"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1805
    .local v0, lowerCaseKey:Ljava/lang/String;
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1806
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1808
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method protected resetSingleUseParameters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1092
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    .line 1093
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    .line 1094
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 1096
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    .line 1097
    iput v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    .line 1098
    iput v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    .line 1100
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->pevMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1101
    return-void
.end method

.method protected sendRequest(Ljava/lang/String;)V
    .locals 2
    .parameter "requestString"

    .prologue
    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestString"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method protected serializeToQueryString(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1820
    .local p1, parameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, ""

    .line 1822
    .local v6, returnVal:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1823
    .local v2, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1824
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1826
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1828
    .local v4, obj:Ljava/lang/Object;
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_1

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v7, v4

    .line 1829
    check-cast v7, Ljava/lang/String;

    .line 1830
    .local v7, value:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1831
    goto :goto_0

    .end local v7           #value:Ljava/lang/String;
    :cond_1
    instance-of v9, v4, Lcom/adobe/adms/measurement/ADMS_ContextData;

    if-eqz v9, :cond_4

    .line 1832
    const/4 v8, 0x0

    .local v8, valueAdded:Z
    move-object v0, v4

    .line 1833
    check-cast v0, Lcom/adobe/adms/measurement/ADMS_ContextData;

    .line 1834
    .local v0, data:Lcom/adobe/adms/measurement/ADMS_ContextData;
    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1835
    const/4 v8, 0x1

    .line 1836
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1838
    :cond_2
    instance-of v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 1839
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 1840
    .local v1, dataCopy:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v1, v9}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 1842
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1843
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->serializeToQueryString(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1844
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1845
    goto/16 :goto_0

    .line 1846
    .end local v1           #dataCopy:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v8, :cond_0

    .line 1847
    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1848
    .restart local v7       #value:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1851
    .end local v0           #data:Lcom/adobe/adms/measurement/ADMS_ContextData;
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #valueAdded:Z
    :cond_4
    instance-of v9, v4, Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    move-object v5, v4

    .line 1852
    check-cast v5, Ljava/util/ArrayList;

    .line 1853
    .local v5, objValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1854
    const-string v9, ","

    invoke-static {v5, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1855
    .restart local v7       #value:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1858
    .end local v5           #objValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #value:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1859
    .restart local v7       #value:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Object for parameter \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" is of class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 1860
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "We recommend using strings where possible, but we are sending this parameter with a value of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 1861
    const-string v9, "If you would like another value for this parameter please send the value as a string the way you would like it to appear."

    invoke-static {v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 1862
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1865
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #obj:Ljava/lang/Object;
    .end local v7           #value:Ljava/lang/String;
    :cond_6
    return-object v6
.end method

.method public setAppSection(Ljava/lang/String;)V
    .locals 0
    .parameter "appSection"

    .prologue
    .line 780
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    .line 781
    return-void
.end method

.method public setAppState(Ljava/lang/String;)V
    .locals 0
    .parameter "appState"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    .line 737
    return-void
.end method

.method public setCampaign(Ljava/lang/String;)V
    .locals 0
    .parameter "campaign"

    .prologue
    .line 801
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    .line 802
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 757
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    .line 758
    return-void
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0
    .parameter "charSet"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .parameter "currencyCode"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public setDebugLogging(Z)V
    .locals 0
    .parameter "debugLogging"

    .prologue
    .line 596
    sput-boolean p1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLogging:Z

    .line 597
    return-void
.end method

.method public setEvar(ILjava/lang/String;)V
    .locals 3
    .parameter "evarNum"
    .parameter "evarValue"

    .prologue
    .line 303
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->evarValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putStringParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setEvents(Ljava/lang/String;)V
    .locals 1
    .parameter "events"

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    .line 849
    return-void
.end method

.method public setGeoState(Ljava/lang/String;)V
    .locals 0
    .parameter "geoState"

    .prologue
    .line 923
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    .line 924
    return-void
.end method

.method public setGeoZip(Ljava/lang/String;)V
    .locals 0
    .parameter "geoZip"

    .prologue
    .line 902
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    .line 903
    return-void
.end method

.method public setHier(ILjava/lang/String;)V
    .locals 3
    .parameter "hierNum"
    .parameter "hierValue"

    .prologue
    .line 361
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->hierValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->hierMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putStringParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setLightIncrementBy(I)V
    .locals 0
    .parameter "lightIncrementBy"

    .prologue
    .line 1580
    iput p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    .line 1581
    return-void
.end method

.method protected setLightProfileID(Ljava/lang/String;)V
    .locals 0
    .parameter "lightProfileID"

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    .line 1565
    return-void
.end method

.method protected setLightStoreForSeconds(I)V
    .locals 0
    .parameter "lightStoreForSeconds"

    .prologue
    .line 1572
    iput p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    .line 1573
    return-void
.end method

.method public setLightTrackVars(Ljava/lang/String;)V
    .locals 1
    .parameter "lightTrackVars"

    .prologue
    .line 1002
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    .line 1003
    return-void
.end method

.method protected setLinkName(Ljava/lang/String;)V
    .locals 0
    .parameter "linkName"

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    .line 1549
    return-void
.end method

.method public setLinkTrackEvents(Ljava/lang/String;)V
    .locals 1
    .parameter "linkTrackEvents"

    .prologue
    .line 976
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    .line 977
    return-void
.end method

.method public setLinkTrackVars(Ljava/lang/String;)V
    .locals 1
    .parameter "linkTrackVars"

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    .line 951
    return-void
.end method

.method protected setLinkType(Ljava/lang/String;)V
    .locals 0
    .parameter "linkType"

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 1557
    return-void
.end method

.method protected setLinkURL(Ljava/lang/String;)V
    .locals 0
    .parameter "linkURL"

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    .line 1541
    return-void
.end method

.method public setListVar(ILjava/lang/String;)V
    .locals 3
    .parameter "listNum"
    .parameter "listValue"

    .prologue
    .line 390
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->listValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->listMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putStringParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setOffline()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isOffline:Z

    .line 142
    return-void
.end method

.method public setOfflineHitLimit(I)V
    .locals 0
    .parameter "offlineHitLimit"

    .prologue
    .line 658
    iput p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineHitLimit:I

    .line 659
    return-void
.end method

.method public setOfflineThrottleDelay(I)V
    .locals 0
    .parameter "offlineThrottleDelay"

    .prologue
    .line 635
    iput p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineThrottleDelay:I

    .line 636
    return-void
.end method

.method public setOfflineTrackingEnabled(Z)V
    .locals 0
    .parameter "offlineTrackingEnabled"

    .prologue
    .line 610
    iput-boolean p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    .line 611
    return-void
.end method

.method public setOnline()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isOffline:Z

    .line 135
    return-void
.end method

.method public setPersistentContextData(Ljava/util/Hashtable;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 869
    .local p1, pContextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 870
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    .line 873
    :cond_0
    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 874
    if-eqz p1, :cond_1

    .line 875
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 876
    .local v1, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 877
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 878
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 879
    .local v2, value:Ljava/lang/Object;
    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanContextKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 882
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public setProducts(Ljava/lang/String;)V
    .locals 3
    .parameter "products"

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    const-string v0, ", "

    const-string v1, ","

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    .line 824
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    const-string v1, " ,"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    .line 828
    :goto_0
    return-void

    .line 826
    :cond_0
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    goto :goto_0
.end method

.method public setProp(ILjava/lang/String;)V
    .locals 3
    .parameter "propNum"
    .parameter "propValue"

    .prologue
    .line 332
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->propValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putStringParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setPurchaseID(Ljava/lang/String;)V
    .locals 0
    .parameter "purchaseID"

    .prologue
    .line 692
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    .line 693
    return-void
.end method

.method public setReportSuiteIDs(Ljava/lang/String;)V
    .locals 1
    .parameter "reportSuiteIDs"

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public setSSL(Z)V
    .locals 0
    .parameter "ssl"

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    .line 584
    return-void
.end method

.method public setTrackingServer(Ljava/lang/String;)V
    .locals 0
    .parameter "trackingServer"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public setTransactionID(Ljava/lang/String;)V
    .locals 0
    .parameter "transactionID"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    .line 714
    return-void
.end method

.method public setVisitorID(Ljava/lang/String;)V
    .locals 0
    .parameter "visitorID"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;

    .line 527
    return-void
.end method

.method protected setupDefaults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1019
    const-string v1, "JAVA-3.0.4-AN"

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->version:Ljava/lang/String;

    .line 1021
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    .line 1022
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    .line 1023
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->pevMap:Ljava/util/Hashtable;

    .line 1024
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->hierMap:Ljava/util/Hashtable;

    .line 1025
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->listMap:Ljava/util/Hashtable;

    .line 1026
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    .line 1028
    iput-boolean v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    .line 1029
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineHitLimit:I

    .line 1030
    iput v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineThrottleDelay:I

    .line 1032
    iput-boolean v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    .line 1033
    iput-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 1036
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    iput-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create secure random number generator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected toBoolean(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1978
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected toInteger(Ljava/lang/Object;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1966
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public track()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->track(Ljava/util/Hashtable;)V

    .line 210
    return-void
.end method

.method public track(Ljava/util/Hashtable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 222
    return-void
.end method

.method public track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, variables:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    monitor-exit p0

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getRequestString(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->sendRequest(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->resetSingleUseParameters()V

    .line 241
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trackAppState(Ljava/lang/String;)V
    .locals 1
    .parameter "appState"

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackAppState(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 156
    return-void
.end method

.method public trackAppState(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .parameter "appState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 171
    .local v0, overrides:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "pageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0, p2, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 173
    return-void
.end method

.method public trackEvents(Ljava/lang/String;)V
    .locals 1
    .parameter "eventNames"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackEvents(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 185
    return-void
.end method

.method public trackEvents(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 6
    .parameter "eventNames"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p2, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 199
    .local v5, overrides:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "events"

    invoke-virtual {v5, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/4 v1, 0x0

    const-string v2, "o"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getApplicationID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Event"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 201
    return-void
.end method

.method public trackLight(Ljava/lang/String;IILjava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 0
    .parameter "lightProfileID"
    .parameter "lightStoreForSeconds"
    .parameter "incrementBy"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p4, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, variables:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLightProfileID(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLightStoreForSeconds(I)V

    .line 289
    invoke-virtual {p0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLightIncrementBy(I)V

    .line 291
    invoke-virtual {p0, p4, p5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 292
    return-void
.end method

.method public trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 0
    .parameter "linkURL"
    .parameter "linkType"
    .parameter "linkName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p4, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, variables:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLinkURL(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLinkType(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLinkName(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, p4, p5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 266
    return-void
.end method

.method protected translateContextData(Ljava/util/Hashtable;Ljava/util/ArrayList;)Lcom/adobe/adms/measurement/ADMS_ContextData;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adobe/adms/measurement/ADMS_ContextData;"
        }
    .end annotation

    .prologue
    .line 1455
    .local p1, dict:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, filterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/adobe/adms/measurement/ADMS_ContextData;

    invoke-direct {v3}, Lcom/adobe/adms/measurement/ADMS_ContextData;-><init>()V

    .line 1457
    .local v3, tempContextData:Lcom/adobe/adms/measurement/ADMS_ContextData;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1458
    .local v2, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1459
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1460
    .local v0, key:Ljava/lang/String;
    if-eqz p2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contextdata."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1464
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    .local v1, keyArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "[.]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1466
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v1, v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->addValueToHashtable(Ljava/lang/Object;Lcom/adobe/adms/measurement/ADMS_ContextData;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1470
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #keyArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method protected urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "unencodedString"

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0x30

    .line 1869
    if-nez p1, :cond_0

    .line 1892
    :goto_0
    return-object v6

    .line 1874
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "ISO-8859-1"

    invoke-direct {v5, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1876
    .end local p1
    .local v5, unencodedString:Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1877
    .local v4, encodedString:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, chNum:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 1878
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1879
    .local v0, ch:C
    const/16 v7, 0x61

    if-lt v0, v7, :cond_1

    const/16 v7, 0x7a

    if-le v0, v7, :cond_4

    :cond_1
    const/16 v7, 0x41

    if-lt v0, v7, :cond_2

    const/16 v7, 0x5a

    if-le v0, v7, :cond_4

    :cond_2
    if-lt v0, v9, :cond_3

    const/16 v7, 0x39

    if-le v0, v7, :cond_4

    :cond_3
    const-string v7, ".-*_"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_5

    .line 1880
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1877
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1882
    :cond_5
    const/16 v7, 0x10

    invoke-static {v0, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1883
    .local v1, chHex:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 1884
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1886
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1890
    .end local v0           #ch:C
    .end local v1           #chHex:Ljava/lang/String;
    .end local v2           #chNum:I
    .end local v4           #encodedString:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    move-object p1, v5

    .line 1891
    .end local v5           #unencodedString:Ljava/lang/String;
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    .restart local p1
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnsupportedEncodingException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1889
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .end local p1
    .restart local v2       #chNum:I
    .restart local v4       #encodedString:Ljava/lang/StringBuffer;
    .restart local v5       #unencodedString:Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    move-object p1, v5

    .end local v5           #unencodedString:Ljava/lang/String;
    .restart local p1
    goto/16 :goto_0

    .line 1890
    .end local v2           #chNum:I
    .end local v4           #encodedString:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method protected validateLinkTracking(Ljava/util/Hashtable;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1170
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 1172
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    const-string v0, "o"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 1176
    :cond_1
    const-string v0, "pe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lnk_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1177
    const-string v0, "pev1"

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1178
    const-string v0, "pev2"

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1180
    :cond_2
    return-void
.end method

.method protected validateRequiredLightVariables(Ljava/util/Hashtable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1164
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ce"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    const-string v0, "ce"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    :cond_0
    return-void
.end method

.method protected validateRequiredVariables(Ljava/util/Hashtable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1152
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    const-string v0, "vid"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getDefaultVisitorID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1155
    :cond_0
    const-string v0, "ce"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1156
    const-string v0, "ce"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1158
    :cond_1
    const-string v0, "pageName"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "g"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1159
    const-string v0, "pageName"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getApplicationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1161
    :cond_2
    return-void
.end method

.method protected validateTechnology()V
    .locals 4

    .prologue
    .line 1183
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1184
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    const-string v2, "a.Resolution"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getResolutionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    const-string v2, "a.DeviceName"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getPlatformString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    const-string v2, "a.OSVersion"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getOperatingSystemString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    const-string v2, "a.CarrierName"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getCarrierString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    monitor-exit v1

    .line 1191
    return-void

    .line 1190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected validateTimestamps(Ljava/util/Hashtable;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, trackParameters:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 1195
    .local v7, date:Ljava/util/Date;
    iget-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    if-eqz v0, :cond_1

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getTime()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1197
    .local v10, tsString:Ljava/lang/String;
    const-string v0, "ts"

    invoke-virtual {p0, p1, v0, v10}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1203
    .end local v10           #tsString:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 1204
    .local v9, tm:Ljava/util/Calendar;
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    const/16 v12, 0xc

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v6, v12

    mul-int/lit8 v6, v6, 0x3c

    const/16 v12, 0xd

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v6, v12

    mul-int/lit16 v6, v6, 0x3e8

    const/16 v12, 0xe

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v6, v12

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1223
    .local v8, time:Ljava/lang/String;
    const-string v0, "t"

    invoke-virtual {p0, p1, v0, v8}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1225
    return-void

    .line 1198
    .end local v8           #time:Ljava/lang/String;
    .end local v9           #tm:Ljava/util/Calendar;
    :cond_1
    iget-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1199
    new-instance v7, Ljava/util/Date;

    .end local v7           #date:Ljava/util/Date;
    iget-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1200
    .restart local v7       #date:Ljava/util/Date;
    const-string v0, "ts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
