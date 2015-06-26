.class public Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;
.super Ljava/lang/Object;
.source "ADMS_MediaMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement$1;,
        Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement$ADMS_MediaMeasurementHolder;
    }
.end annotation


# instance fields
.field public channel:Ljava/lang/String;

.field public completeCloseOffsetThreshold:I

.field public contextDataMapping:Ljava/util/Hashtable;
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

.field public delegate:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurementDelegate;

.field protected list:Ljava/util/Hashtable;
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

.field public segmentByMilestones:Z

.field public segmentByOffsetMilestones:Z

.field public trackEvents:Ljava/lang/String;

.field public trackMilestones:Ljava/lang/String;

.field public trackOffsetMilestones:Ljava/lang/String;

.field public trackSeconds:I

.field public trackVars:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v2, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->trackVars:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->trackEvents:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->channel:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->trackSeconds:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->completeCloseOffsetThreshold:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->trackMilestones:Ljava/lang/String;

    .line 22
    iput-boolean v1, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->segmentByMilestones:Z

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->trackOffsetMilestones:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->segmentByOffsetMilestones:Z

    .line 26
    iput-object v2, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->contextDataMapping:Ljava/util/Hashtable;

    .line 28
    iput-object v2, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->delegate:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurementDelegate;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;-><init>()V

    return-void
.end method

.method private isInteger(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 835
    :try_start_0
    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 838
    :cond_0
    :goto_0
    return v0

    .line 836
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

    .line 823
    :try_start_0
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 826
    :cond_0
    :goto_0
    return v0

    .line 824
    .restart local p1
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sharedInstance()Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement$ADMS_MediaMeasurementHolder;->baseInstance:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;

    return-object v0
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .parameter "value"

    .prologue
    .line 830
    check-cast p1, Ljava/lang/String;

    .end local p1
    return-object p1
.end method


# virtual methods
.method protected buildContextData(Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;)V
    .locals 18
    .parameter
    .parameter
    .parameter "media"
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
            "Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, variableOverrides:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "a.media."

    .line 222
    .local v5, ns:Ljava/lang/String;
    const-string v14, "linkTrackVars"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    check-cast v8, Ljava/lang/String;

    .line 223
    .local v8, v:Ljava/lang/String;
    const-string v14, "linkTrackEvents"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v2, v14

    check-cast v2, Ljava/lang/String;

    .line 224
    .local v2, e:Ljava/lang/String;
    const-string v6, "m_i"

    .line 229
    .local v6, pe:Ljava/lang/String;
    const-string v14, "a.contentType"

    const-string v15, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->channel:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 231
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "channel"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->channel:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "playerName"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->playerName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_1

    .line 235
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "length"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "timePlayed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayedSinceTrack:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->viewTracked:Z

    if-nez v14, :cond_2

    .line 241
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "view"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/lang/Boolean;

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v6, "m_s"

    .line 243
    const/4 v14, 0x1

    move-object/from16 v0, p3

    iput-boolean v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->viewTracked:Z

    .line 247
    :cond_2
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segment:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 248
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "segmentNum"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    iget v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentNum:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "segment"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segment:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentLength:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_3

    .line 251
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "segmentLength"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentLength:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_3
    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentChanged:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayedSinceTrack:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_4

    .line 254
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "segmentView"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/lang/Boolean;

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_4
    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->completeTracked:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->complete:Z

    if-eqz v14, :cond_5

    .line 260
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "complete"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/lang/Boolean;

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/4 v14, 0x1

    move-object/from16 v0, p3

    iput-boolean v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->completeTracked:Z

    .line 265
    :cond_5
    move-object/from16 v0, p3

    iget v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastMilestone:I

    if-lez v14, :cond_6

    .line 266
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "milestone"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    iget v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastMilestone:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_6
    move-object/from16 v0, p3

    iget v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastOffsetMilestone:I

    if-lez v14, :cond_7

    .line 269
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "offsetMilestone"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    iget v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastOffsetMilestone:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_7
    const-string v7, "video"

    .line 274
    .local v7, pev3:Ljava/lang/String;
    const-string v14, "pe"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v14, "pev3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v3, ""

    .line 283
    .local v3, events2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->contextDataMapping:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 284
    const-string v3, ""

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->contextDataMapping:Ljava/util/Hashtable;

    invoke-virtual {v14}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 286
    .local v4, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_8
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 287
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 288
    .local v9, varKey:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-le v14, v15, :cond_b

    const/4 v14, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 289
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 293
    .local v10, varSubKey:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->contextDataMapping:Ljava/util/Hashtable;

    invoke-virtual {v14, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 294
    .local v11, varValue:Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isString(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 295
    check-cast v11, Ljava/lang/String;

    .end local v11           #varValue:Ljava/lang/Object;
    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 296
    .local v12, varValueList:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, varValueNum:I
    :goto_2
    array-length v14, v12

    if-ge v13, v14, :cond_8

    .line 297
    aget-object v11, v12, v13

    .line 298
    .local v11, varValue:Ljava/lang/String;
    const-string v14, "a.contentType"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 299
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 300
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v14, v11

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 302
    :cond_9
    check-cast v11, Ljava/lang/String;

    .end local v11           #varValue:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_a
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 291
    .end local v10           #varSubKey:Ljava/lang/String;
    .end local v12           #varValueList:[Ljava/lang/String;
    .end local v13           #varValueNum:I
    :cond_b
    const-string v10, ""

    .restart local v10       #varSubKey:Ljava/lang/String;
    goto :goto_1

    .line 303
    .restart local v11       #varValue:Ljava/lang/String;
    .restart local v12       #varValueList:[Ljava/lang/String;
    .restart local v13       #varValueNum:I
    :cond_c
    const-string v14, ""

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 304
    const-string v14, "view"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "segmentView"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "complete"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "timePlayed"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 305
    :cond_d
    const-string v14, "timePlayed"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 306
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_a

    .line 307
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    const-string v14, ","

    :goto_4
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v14, v11

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 309
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    check-cast v11, Ljava/lang/String;

    .end local v11           #varValue:Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 307
    .restart local v11       #varValue:Ljava/lang/String;
    :cond_e
    const-string v14, ""

    goto :goto_4

    .line 312
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 313
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    const-string v14, ","

    :goto_5
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v14, v11

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 315
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    check-cast v11, Ljava/lang/String;

    .end local v11           #varValue:Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 313
    .restart local v11       #varValue:Ljava/lang/String;
    :cond_10
    const-string v14, ""

    goto :goto_5

    .line 318
    :cond_11
    const-string v14, "segment"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Num"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Num"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 319
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 320
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v14, v11

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 322
    :cond_12
    check-cast v11, Ljava/lang/String;

    .end local v11           #varValue:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Num"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 324
    .restart local v11       #varValue:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 325
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v14, v11

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 327
    :cond_14
    check-cast v11, Ljava/lang/String;

    .end local v11           #varValue:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 331
    .end local v12           #varValueList:[Ljava/lang/String;
    .end local v13           #varValueNum:I
    .local v11, varValue:Ljava/lang/Object;
    :cond_15
    const-string v14, "milestones"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    const-string v14, "offsetMilestones"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 333
    :cond_16
    const/4 v14, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 334
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->contextDataMapping:Ljava/util/Hashtable;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "s"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Hashtable;

    check-cast v14, Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 336
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 337
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->contextDataMapping:Ljava/util/Hashtable;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "s"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Hashtable;

    check-cast v14, Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 339
    :cond_17
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    const-string v14, ","

    :goto_6
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->contextDataMapping:Ljava/util/Hashtable;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "s"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Hashtable;

    check-cast v14, Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_18
    const-string v14, ""

    goto :goto_6

    .line 344
    .end local v9           #varKey:Ljava/lang/String;
    .end local v10           #varSubKey:Ljava/lang/String;
    .end local v11           #varValue:Ljava/lang/Object;
    :cond_19
    const-string v14, "events"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const/16 p1, 0x0

    .line 360
    :cond_1a
    const-string v14, "linkTrackVars"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v14, "linkTrackEvents"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-void

    .line 349
    .end local v4           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1c

    .line 350
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "None"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 352
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 353
    .restart local v4       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 354
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 355
    .restart local v9       #varKey:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",contextdata."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_7
.end method

.method protected cleanName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 66
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 67
    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 68
    const-string v0, "--**--"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 69
    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public close(Ljava/lang/String;)V
    .locals 11
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010

    .line 166
    move-object v1, p0

    move-object v2, p1

    move v6, v3

    move-wide v8, v4

    move-object v10, v7

    invoke-virtual/range {v1 .. v10}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->playerEvent(Ljava/lang/String;IDILjava/lang/String;DLjava/lang/Object;)Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    .line 167
    return-void
.end method

.method public complete(Ljava/lang/String;D)V
    .locals 12
    .parameter "name"
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    .line 194
    const/4 v3, 0x5

    const/4 v6, 0x0

    const-wide/high16 v8, -0x4010

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v10, v7

    invoke-virtual/range {v1 .. v10}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->playerEvent(Ljava/lang/String;IDILjava/lang/String;DLjava/lang/Object;)Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    .line 195
    return-void
.end method

.method protected isBoolean(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 847
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 850
    :cond_0
    :goto_0
    return v0

    .line 848
    .restart local p1
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected isSet(D)Z
    .locals 3
    .parameter "val"

    .prologue
    .line 791
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 792
    const/4 v0, 0x0

    .line 794
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
    .line 784
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 785
    const/4 v0, 0x0

    .line 787
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
    .line 777
    if-nez p1, :cond_0

    .line 778
    const/4 v0, 0x0

    .line 780
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
    .line 808
    if-nez p1, :cond_0

    .line 809
    const/4 v0, 0x0

    .line 817
    :goto_0
    return v0

    .line 810
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    invoke-direct {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 812
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    invoke-virtual {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->toInteger(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(I)Z

    move-result v0

    goto :goto_0

    .line 814
    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 815
    invoke-virtual {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Z)Z

    move-result v0

    goto :goto_0

    .line 817
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSet(Ljava/lang/String;)Z
    .locals 2
    .parameter "val"

    .prologue
    const/4 v0, 0x0

    .line 798
    if-nez p1, :cond_1

    .line 804
    :cond_0
    :goto_0
    return v0

    .line 801
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSet(Z)Z
    .locals 0
    .parameter "val"

    .prologue
    .line 773
    return p1
.end method

.method public open(Ljava/lang/String;DLjava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "length"
    .parameter "playerName"

    .prologue
    .line 156
    move-object v0, p0

    .line 157
    .local v0, m:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;
    const/4 v5, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->open(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public open(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "name"
    .parameter "length"
    .parameter "playerName"
    .parameter "playerID"

    .prologue
    .line 81
    new-instance v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    invoke-direct {v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;-><init>()V

    .line 83
    .local v1, mediaItem:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;
    invoke-virtual {p0, p4}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .end local p4
    :goto_0
    invoke-virtual {p0, p4}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 85
    .restart local p4
    invoke-virtual {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(D)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    const-wide/high16 p2, -0x4010

    .line 92
    :cond_1
    invoke-virtual {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, p4}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 93
    iget-object v3, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    invoke-virtual {p0, v3}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 94
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    invoke-virtual {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->close(Ljava/lang/String;)V

    .line 99
    :cond_3
    invoke-virtual {p0, p5}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 100
    iget-object v3, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 101
    .local v0, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, mediaName:Ljava/lang/String;
    iget-object v3, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    check-cast v3, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    iget-object v3, v3, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->playerID:Ljava/lang/String;

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    invoke-virtual {p0, v2}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->close(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    .end local v0           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #mediaName:Ljava/lang/String;
    :cond_5
    const-string p4, "Not_Specified"

    goto :goto_0

    .line 113
    :cond_6
    iput-object p1, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->name:Ljava/lang/String;

    .line 114
    iput-wide p2, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    .line 115
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->offset:D

    .line 116
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->percent:D

    .line 117
    invoke-virtual {p0, p4}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->playerName:Ljava/lang/String;

    .line 118
    iput-object p5, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->playerID:Ljava/lang/String;

    .line 119
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayed:D

    .line 120
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayedSinceTrack:D

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    long-to-double v4, v4

    iput-wide v4, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timestamp:D

    .line 122
    const/4 v3, 0x0

    iput v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventType:I

    .line 123
    iget-wide v4, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timestamp:D

    iput-wide v4, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventTimestamp:D

    .line 124
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    .line 125
    const-string v3, ""

    iput-object v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->session:Ljava/lang/String;

    .line 126
    const-wide/high16 v4, -0x4010

    iput-wide v4, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastTrackOffset:D

    .line 127
    const/4 v3, 0x0

    iput v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->trackCount:I

    .line 128
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->firstEventList:Ljava/util/Hashtable;

    .line 130
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->viewTracked:Z

    .line 132
    const/4 v3, 0x0

    iput v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentNum:I

    .line 133
    const-string v3, ""

    iput-object v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segment:Ljava/lang/String;

    .line 134
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentLength:D

    .line 135
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentGenerated:Z

    .line 136
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentChanged:Z

    .line 138
    const/4 v3, 0x0

    iput v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastMilestone:I

    .line 139
    const/4 v3, 0x0

    iput v3, v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastOffsetMilestone:I

    .line 142
    sput-object p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->m:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;

    .line 144
    iget-object v3, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_7
    return-void
.end method

.method public play(Ljava/lang/String;D)V
    .locals 12
    .parameter "name"
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    .line 176
    invoke-virtual {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    :cond_0
    const/4 v3, 0x1

    const/4 v6, 0x0

    const-wide/high16 v8, -0x4010

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v10, v7

    invoke-virtual/range {v1 .. v10}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->playerEvent(Ljava/lang/String;IDILjava/lang/String;DLjava/lang/Object;)Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    .line 181
    invoke-virtual {p0, p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    invoke-virtual {p0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    move-object v0, v1

    check-cast v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    .line 183
    .local v0, media:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;
    invoke-virtual {v0}, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->startMonitor()V

    .line 185
    .end local v0           #media:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;
    :cond_1
    return-void
.end method

.method protected playerEvent(Ljava/lang/String;IDILjava/lang/String;DLjava/lang/Object;)Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;
    .locals 35
    .parameter "name"
    .parameter "eventType"
    .parameter "offset"
    .parameter "segmentNum"
    .parameter "segment"
    .parameter "segmentLength"
    .parameter "playerData"

    .prologue
    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 371
    .local v18, timeStamp:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->trackVars:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 372
    .local v25, trackVarsCopy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->trackEvents:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 373
    .local v22, trackEventsCopy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->trackSeconds:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v26, v0

    .line 374
    .local v26, trackSecondsCopy:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->trackMilestones:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 375
    .local v23, trackMiletonesCopy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->trackOffsetMilestones:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 376
    .local v24, trackOffsetMilestonesCopy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->segmentByMilestones:Z

    move/from16 v16, v0

    .line 377
    .local v16, segmentByMilestonesCopy:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->segmentByOffsetMilestones:Z

    move/from16 v17, v0

    .line 379
    .local v17, segmentByOffsetMilestonesCopy:Z
    const/16 v20, 0x1

    .line 382
    .local v20, track:Z
    invoke-virtual/range {p0 .. p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 383
    invoke-virtual/range {p0 .. p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 387
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    check-cast v29, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    move-object/from16 v11, v29

    .line 389
    .local v11, mediaItem:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;
    :goto_0
    if-eqz v11, :cond_3a

    .line 391
    const-wide/16 v30, 0x0

    cmpg-double v29, p3, v30

    if-gez v29, :cond_1

    .line 392
    iget v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventType:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventTimestamp:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-lez v29, :cond_d

    .line 393
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventTimestamp:D

    move-wide/from16 v30, v0

    sub-double v30, v18, v30

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    move-wide/from16 v32, v0

    add-double p3, v30, v32

    .line 399
    :cond_1
    :goto_1
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-lez v29, :cond_2

    .line 401
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    cmpg-double v29, p3, v30

    if-gez v29, :cond_e

    .line 403
    :cond_2
    :goto_2
    const-wide/16 v30, 0x0

    cmpg-double v29, p3, v30

    if-gez v29, :cond_3

    .line 404
    const-wide/16 p3, 0x0

    .line 406
    :cond_3
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->offset:D

    .line 408
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-lez v29, :cond_4

    .line 409
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->offset:D

    move-wide/from16 v30, v0

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    const-wide/high16 v32, 0x4059

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->percent:D

    .line 410
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->percent:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059

    cmpl-double v29, v30, v32

    if-lez v29, :cond_f

    const-wide/high16 v30, 0x4059

    :goto_3
    move-wide/from16 v0, v30

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->percent:D

    .line 413
    :cond_4
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpg-double v29, v30, v32

    if-gez v29, :cond_5

    .line 414
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    .line 418
    :cond_5
    iget v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->trackCount:I

    move/from16 v21, v0

    .line 421
    .local v21, trackCount:I
    new-instance v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;

    invoke-direct {v14}, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;-><init>()V

    .line 422
    .local v14, mediaState:Lcom/adobe/adms/mediameasurement/ADMS_MediaState;
    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->name:Ljava/lang/String;

    .line 423
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->length:D

    .line 424
    new-instance v29, Ljava/util/Date;

    invoke-direct/range {v29 .. v29}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->openTime:Ljava/util/Date;

    .line 425
    iget-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->openTime:Ljava/util/Date;

    move-object/from16 v29, v0

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timestamp:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    double-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/util/Date;->setTime(J)V

    .line 426
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->offset:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->offset:D

    .line 427
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->percent:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->percent:D

    .line 428
    iget-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->playerName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->playerName:Ljava/lang/String;

    .line 429
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastTrackOffset:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpg-double v29, v30, v32

    if-gez v29, :cond_10

    .line 430
    const-string v29, "OPEN"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    .line 465
    :goto_4
    const/16 v29, 0x2

    move/from16 v0, p2

    move/from16 v1, v29

    if-gt v0, v1, :cond_6

    iget v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventType:I

    move/from16 v29, v0

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_3a

    const/16 v29, 0x2

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    iget v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventType:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3a

    .line 468
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_7

    .line 469
    iget v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentNum:I

    move/from16 p5, v0

    .line 470
    iget-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segment:Ljava/lang/String;

    move-object/from16 p6, v0

    .line 472
    :cond_7
    if-lez p2, :cond_2d

    .line 479
    const/16 v29, 0x1

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 480
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    .line 484
    :cond_8
    const/16 v29, 0x3

    move/from16 v0, p2

    move/from16 v1, v29

    if-le v0, v1, :cond_9

    const/16 v29, 0x5

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    :cond_9
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastTrackOffset:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-ltz v29, :cond_17

    .line 485
    const/16 v20, 0x0

    .line 486
    const-string v25, "None"

    .line 487
    const-string v22, "None"

    .line 488
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastTrackOffset:D

    move-wide/from16 v30, v0

    cmpl-double v29, v30, p3

    if-eqz v29, :cond_17

    .line 490
    iget-wide v12, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastTrackOffset:D

    .line 491
    .local v12, last:D
    cmpl-double v29, v12, p3

    if-lez v29, :cond_a

    .line 492
    iget-wide v12, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    .line 493
    cmpl-double v29, v12, p3

    if-lez v29, :cond_a

    .line 494
    move-wide/from16 v12, p3

    .line 499
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    const-string v29, ","

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 500
    .local v15, milestones:[Ljava/lang/String;
    :goto_5
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-lez v29, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    cmpl-double v29, p3, v12

    if-ltz v29, :cond_13

    .line 501
    const/4 v10, 0x0

    .local v10, j:I
    :goto_6
    array-length v0, v15

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_13

    .line 503
    :try_start_0
    aget-object v29, v15, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_12

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v15, v10

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    :goto_7
    move/from16 v0, v29

    int-to-double v6, v0

    .line 507
    .local v6, current:D
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(D)Z

    move-result v29

    if-eqz v29, :cond_b

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    div-double v30, v12, v30

    const-wide/high16 v32, 0x4059

    mul-double v30, v30, v32

    cmpg-double v29, v30, v6

    if-gez v29, :cond_b

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->percent:D

    move-wide/from16 v30, v0

    cmpl-double v29, v30, v6

    if-ltz v29, :cond_b

    .line 508
    const/16 v20, 0x1

    .line 509
    const-string v29, "MILESTONE"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    .line 510
    double-to-int v0, v6

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->milestone:I

    move/from16 v0, v29

    iput v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastMilestone:I

    .line 511
    array-length v10, v15

    .line 501
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 387
    .end local v6           #current:D
    .end local v10           #j:I
    .end local v11           #mediaItem:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;
    .end local v12           #last:D
    .end local v14           #mediaState:Lcom/adobe/adms/mediameasurement/ADMS_MediaState;
    .end local v15           #milestones:[Ljava/lang/String;
    .end local v21           #trackCount:I
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 395
    .restart local v11       #mediaItem:Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;
    :cond_d
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    move-wide/from16 p3, v0

    goto/16 :goto_1

    .line 401
    :cond_e
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 p3, v0

    goto/16 :goto_2

    .line 410
    :cond_f
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->percent:D

    move-wide/from16 v30, v0

    goto/16 :goto_3

    .line 432
    .restart local v14       #mediaState:Lcom/adobe/adms/mediameasurement/ADMS_MediaState;
    .restart local v21       #trackCount:I
    :cond_10
    packed-switch p2, :pswitch_data_0

    .line 449
    const-string v29, "CLOSE"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    goto/16 :goto_4

    .line 434
    :pswitch_0
    const-string v29, "PLAY"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    goto/16 :goto_4

    .line 437
    :pswitch_1
    const-string v29, "STOP"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    goto/16 :goto_4

    .line 440
    :pswitch_2
    const-string v29, "MONITOR"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    goto/16 :goto_4

    .line 443
    :pswitch_3
    const-string v29, "TRACK"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    goto/16 :goto_4

    .line 446
    :pswitch_4
    const-string v29, "COMPLETE"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    goto/16 :goto_4

    .line 499
    .restart local v12       #last:D
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 503
    .restart local v10       #j:I
    .restart local v15       #milestones:[Ljava/lang/String;
    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 504
    :catch_0
    move-exception v9

    .line 505
    .local v9, ex:Ljava/lang/NumberFormatException;
    const-wide/16 v6, 0x0

    .restart local v6       #current:D
    goto/16 :goto_8

    .line 517
    .end local v6           #current:D
    .end local v9           #ex:Ljava/lang/NumberFormatException;
    .end local v10           #j:I
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_15

    const-string v29, ","

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 518
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_17

    cmpl-double v29, p3, v12

    if-ltz v29, :cond_17

    .line 519
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_a
    array-length v0, v15

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_17

    .line 521
    :try_start_1
    aget-object v29, v15, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_16

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v15, v10

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v29

    :goto_b
    move/from16 v0, v29

    int-to-double v6, v0

    .line 525
    .restart local v6       #current:D
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(D)Z

    move-result v29

    if-eqz v29, :cond_14

    cmpg-double v29, v12, v6

    if-gez v29, :cond_14

    cmpl-double v29, p3, v6

    if-ltz v29, :cond_14

    .line 526
    const/16 v20, 0x1

    .line 527
    const-string v29, "OFFSET_MILESTONE"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    .line 528
    double-to-int v0, v6

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->offsetMilestone:I

    move/from16 v0, v29

    iput v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastOffsetMilestone:I

    .line 529
    array-length v10, v15

    .line 519
    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 517
    .end local v6           #current:D
    .end local v10           #j:I
    :cond_15
    const/4 v15, 0x0

    goto :goto_9

    .line 521
    .restart local v10       #j:I
    :cond_16
    const/16 v29, 0x0

    goto :goto_b

    .line 522
    :catch_1
    move-exception v9

    .line 523
    .restart local v9       #ex:Ljava/lang/NumberFormatException;
    const-wide/16 v6, 0x0

    .restart local v6       #current:D
    goto :goto_c

    .line 542
    .end local v6           #current:D
    .end local v9           #ex:Ljava/lang/NumberFormatException;
    .end local v10           #j:I
    .end local v12           #last:D
    .end local v15           #milestones:[Ljava/lang/String;
    :cond_17
    iget-boolean v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentGenerated:Z

    move/from16 v29, v0

    if-nez v29, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_24

    .line 544
    :cond_18
    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1c

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-lez v29, :cond_1c

    .line 545
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ",100"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 546
    .restart local v15       #milestones:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_23

    .line 547
    const-wide/16 v12, 0x0

    .line 548
    .restart local v12       #last:D
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_d
    array-length v0, v15

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_23

    .line 550
    :try_start_2
    aget-object v29, v15, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1b

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v15, v10

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v29

    :goto_e
    move/from16 v0, v29

    int-to-double v6, v0

    .line 554
    .restart local v6       #current:D
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(D)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 555
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->percent:D

    move-wide/from16 v30, v0

    cmpg-double v29, v30, v6

    if-gez v29, :cond_19

    .line 556
    add-int/lit8 p5, v10, 0x1

    .line 557
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "M:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%1.0f"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%1.0f"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 558
    array-length v10, v15

    .line 560
    :cond_19
    move-wide v12, v6

    .line 548
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_d

    .line 550
    .end local v6           #current:D
    :cond_1b
    const/16 v29, 0x0

    goto :goto_e

    .line 551
    :catch_2
    move-exception v9

    .line 552
    .restart local v9       #ex:Ljava/lang/NumberFormatException;
    const-wide/16 v6, 0x0

    .restart local v6       #current:D
    goto :goto_f

    .line 565
    .end local v6           #current:D
    .end local v9           #ex:Ljava/lang/NumberFormatException;
    .end local v10           #j:I
    .end local v12           #last:D
    .end local v15           #milestones:[Ljava/lang/String;
    :cond_1c
    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_23

    .line 566
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-lez v29, :cond_21

    .line 567
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 570
    .restart local v15       #milestones:[Ljava/lang/String;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_23

    .line 571
    const-wide/16 v12, 0x0

    .line 572
    .restart local v12       #last:D
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_11
    array-length v0, v15

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_23

    .line 574
    :try_start_3
    aget-object v29, v15, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_22

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v15, v10

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v29

    :goto_12
    move/from16 v0, v29

    int-to-double v6, v0

    .line 578
    .restart local v6       #current:D
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(D)Z

    move-result v29

    if-nez v29, :cond_1d

    aget-object v29, v15, v10

    const-string v30, "E"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 579
    :cond_1d
    cmpg-double v29, p3, v6

    if-ltz v29, :cond_1e

    aget-object v29, v15, v10

    const-string v30, "E"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 580
    :cond_1e
    add-int/lit8 p5, v10, 0x1

    .line 581
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "O:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%1.0f"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v15, v10

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 582
    array-length v10, v15

    .line 584
    :cond_1f
    move-wide v12, v6

    .line 572
    :cond_20
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_11

    .line 569
    .end local v6           #current:D
    .end local v10           #j:I
    .end local v12           #last:D
    .end local v15           #milestones:[Ljava/lang/String;
    :cond_21
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "E"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .restart local v15       #milestones:[Ljava/lang/String;
    goto/16 :goto_10

    .line 574
    .restart local v10       #j:I
    .restart local v12       #last:D
    :cond_22
    const/16 v29, 0x0

    goto/16 :goto_12

    .line 575
    :catch_3
    move-exception v9

    .line 576
    .restart local v9       #ex:Ljava/lang/NumberFormatException;
    const-wide/16 v6, 0x0

    .restart local v6       #current:D
    goto/16 :goto_13

    .line 589
    .end local v6           #current:D
    .end local v9           #ex:Ljava/lang/NumberFormatException;
    .end local v10           #j:I
    .end local v12           #last:D
    .end local v15           #milestones:[Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 590
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentGenerated:Z

    .line 595
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_25

    iget-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segment:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_27

    :cond_25
    iget-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segment:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    .line 596
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->updateSegment:Z

    .line 597
    iget-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segment:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_26

    .line 598
    move/from16 v0, p5

    iput v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentNum:I

    .line 599
    move-object/from16 v0, p6

    iput-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segment:Ljava/lang/String;

    .line 601
    :cond_26
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastTrackOffset:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-ltz v29, :cond_27

    .line 602
    const/16 v20, 0x1

    .line 607
    :cond_27
    const/16 v29, 0x2

    move/from16 v0, p2

    move/from16 v1, v29

    if-lt v0, v1, :cond_28

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    move-wide/from16 v30, v0

    cmpg-double v29, v30, p3

    if-gez v29, :cond_28

    .line 608
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayed:D

    move-wide/from16 v30, v0

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    move-wide/from16 v32, v0

    sub-double v32, p3, v32

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayed:D

    .line 609
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayedSinceTrack:D

    move-wide/from16 v30, v0

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    move-wide/from16 v32, v0

    sub-double v32, p3, v32

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayedSinceTrack:D

    .line 613
    :cond_28
    const/16 v29, 0x2

    move/from16 v0, p2

    move/from16 v1, v29

    if-le v0, v1, :cond_29

    const/16 v29, 0x3

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_2b

    iget v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventType:I

    move/from16 v29, v0

    if-nez v29, :cond_2b

    .line 614
    :cond_29
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->session:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v29, 0x1

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_2a

    const/16 v29, 0x3

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_3b

    :cond_2a
    const-string v29, "S"

    :goto_14
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->session:Ljava/lang/String;

    .line 616
    const/16 v29, 0x3

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_3c

    const/16 v29, 0x1

    :goto_15
    move/from16 v0, v29

    iput v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventType:I

    .line 620
    :cond_2b
    if-nez v20, :cond_2c

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastTrackOffset:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-ltz v29, :cond_2c

    const/16 v29, 0x3

    move/from16 v0, p2

    move/from16 v1, v29

    if-gt v0, v1, :cond_2c

    .line 622
    const-wide/16 v30, 0x0

    cmpl-double v29, v26, v30

    if-lez v29, :cond_3d

    .line 623
    :goto_16
    const-wide/16 v30, 0x0

    cmpl-double v29, v26, v30

    if-lez v29, :cond_2c

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayedSinceTrack:D

    move-wide/from16 v30, v0

    cmpl-double v29, v30, v26

    if-ltz v29, :cond_2c

    .line 624
    const/16 v20, 0x1

    .line 625
    const-string v29, "SECONDS"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    .line 630
    :cond_2c
    move-wide/from16 v0, v18

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventTimestamp:D

    .line 631
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventOffset:D

    .line 635
    :cond_2d
    if-eqz p2, :cond_2e

    const/16 v29, 0x3

    move/from16 v0, p2

    move/from16 v1, v29

    if-gt v0, v1, :cond_30

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->percent:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059

    cmpl-double v29, v30, v32

    if-ltz v29, :cond_30

    .line 636
    :cond_2e
    iget v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastEventType:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2f

    .line 637
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->session:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "E"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->session:Ljava/lang/String;

    .line 639
    :cond_2f
    const/16 p2, 0x0

    .line 640
    const-string v25, "None"

    .line 641
    const-string v22, "None"

    .line 642
    const-string v29, "CLOSE"

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    .line 646
    :cond_30
    const/16 v29, 0x5

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_32

    if-eqz p2, :cond_31

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->percent:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059

    cmpl-double v29, v30, v32

    if-ltz v29, :cond_33

    :cond_31
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-lez v29, :cond_33

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->length:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->completeCloseOffsetThreshold:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    cmpl-double v29, p3, v30

    if-ltz v29, :cond_33

    .line 649
    :cond_32
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->complete:Z

    .line 650
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->complete:Z

    .line 651
    const/16 v20, 0x1

    .line 655
    :cond_33
    iget-object v8, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->mediaEvent:Ljava/lang/String;

    .line 656
    .local v8, eventKey:Ljava/lang/String;
    const-string v29, "MILESTONE"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3e

    .line 657
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->milestone:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 662
    :cond_34
    :goto_17
    iget-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->firstEventList:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3f

    .line 663
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->eventFirstTime:Z

    .line 664
    iget-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->firstEventList:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/Integer;

    const/16 v31, 0x1

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :goto_18
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayed:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->timePlayed:D

    .line 671
    iget v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentNum:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->segmentNum:I

    .line 672
    iget-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segment:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->segment:Ljava/lang/String;

    .line 673
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentLength:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->segmentLength:D

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->delegate:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurementDelegate;

    move-object/from16 v29, v0

    if-eqz v29, :cond_35

    const/16 v29, 0x4

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_35

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->delegate:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurementDelegate;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v14}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurementDelegate;->ADMS_MediaMeasurementMonitor(Lcom/adobe/adms/measurement/ADMS_Measurement;Lcom/adobe/adms/mediameasurement/ADMS_MediaState;)V

    .line 680
    :cond_35
    if-nez p2, :cond_36

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->list:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {v11}, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->stopMonitor()V

    .line 685
    :cond_36
    if-eqz v20, :cond_3a

    iget v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->trackCount:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v21

    if-ne v0, v1, :cond_3a

    .line 687
    new-instance v28, Ljava/util/Hashtable;

    invoke-direct/range {v28 .. v28}, Ljava/util/Hashtable;-><init>()V

    .line 688
    .local v28, variableOverrides:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 690
    .local v5, contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_37

    .line 691
    const-string v25, ""

    .line 692
    :cond_37
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_38

    .line 693
    const-string v22, ""

    .line 695
    :cond_38
    const-string v29, "linkTrackVars"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v29, "linkTrackEvents"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1, v11}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->buildContextData(Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;)V

    .line 700
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v4

    .line 701
    .local v4, Measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;
    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 708
    iget-boolean v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->updateSegment:Z

    move/from16 v29, v0

    if-eqz v29, :cond_40

    .line 709
    move/from16 v0, p5

    iput v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentNum:I

    .line 710
    move-object/from16 v0, p6

    iput-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segment:Ljava/lang/String;

    .line 711
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentChanged:Z

    .line 712
    const/16 v29, 0x0

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->updateSegment:Z

    .line 718
    :cond_39
    :goto_19
    const-string v29, ""

    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->session:Ljava/lang/String;

    .line 719
    const/16 v29, 0x0

    move/from16 v0, v29

    iput v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastMilestone:I

    .line 720
    const/16 v29, 0x0

    move/from16 v0, v29

    iput v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastOffsetMilestone:I

    .line 721
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayedSinceTrack:D

    move-wide/from16 v30, v0

    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayedSinceTrack:D

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->floor(D)D

    move-result-wide v32

    sub-double v30, v30, v32

    move-wide/from16 v0, v30

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayedSinceTrack:D

    .line 722
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->lastTrackOffset:D

    .line 723
    iget v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->trackCount:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    iput v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->trackCount:I

    .line 728
    .end local v4           #Measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;
    .end local v5           #contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8           #eventKey:Ljava/lang/String;
    .end local v14           #mediaState:Lcom/adobe/adms/mediameasurement/ADMS_MediaState;
    .end local v21           #trackCount:I
    .end local v28           #variableOverrides:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3a
    return-object v11

    .line 614
    .restart local v14       #mediaState:Lcom/adobe/adms/mediameasurement/ADMS_MediaState;
    .restart local v21       #trackCount:I
    :cond_3b
    const-string v29, "E"

    goto/16 :goto_14

    :cond_3c
    move/from16 v29, p2

    .line 616
    goto/16 :goto_15

    .line 622
    :cond_3d
    const-wide/16 v26, 0x0

    goto/16 :goto_16

    .line 658
    .restart local v8       #eventKey:Ljava/lang/String;
    :cond_3e
    const-string v29, "OFFSET_MILESTONE"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_34

    .line 659
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->offsetMilestone:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_17

    .line 666
    :cond_3f
    const/16 v29, 0x0

    move/from16 v0, v29

    iput-boolean v0, v14, Lcom/adobe/adms/mediameasurement/ADMS_MediaState;->eventFirstTime:Z

    goto/16 :goto_18

    .line 714
    .restart local v4       #Measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;
    .restart local v5       #contextData:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v28       #variableOverrides:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_40
    iget-wide v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->timePlayedSinceTrack:D

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-lez v29, :cond_39

    .line 715
    const/16 v29, 0x0

    move/from16 v0, v29

    iput-boolean v0, v11, Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;->segmentChanged:Z

    goto :goto_19

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public stop(Ljava/lang/String;D)V
    .locals 12
    .parameter "name"
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    .line 204
    const/4 v3, 0x2

    const/4 v6, 0x0

    const-wide/high16 v8, -0x4010

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v10, v7

    invoke-virtual/range {v1 .. v10}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->playerEvent(Ljava/lang/String;IDILjava/lang/String;DLjava/lang/Object;)Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    .line 205
    return-void
.end method

.method protected toBoolean(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 854
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
    .line 842
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public track(Ljava/lang/String;)V
    .locals 11
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    const-wide/high16 v4, -0x4010

    .line 213
    move-object v1, p0

    .line 215
    .local v1, m:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;
    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-wide v8, v4

    move-object v10, v7

    invoke-virtual/range {v1 .. v10}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;->playerEvent(Ljava/lang/String;IDILjava/lang/String;DLjava/lang/Object;)Lcom/adobe/adms/mediameasurement/ADMS_MediaItem;

    .line 216
    return-void
.end method
