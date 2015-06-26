.class public Lcom/omniture/AppMeasurementBase;
.super Lcom/omniture/AppMeasurement_Variables;
.source "AppMeasurementBase.java"


# static fields
.field private static randomNumGen:Ljava/util/Random;


# instance fields
.field protected _1_referrer:I

.field public imageDimensions:Ljava/lang/String;

.field public maxRequestThreads:I

.field public maxRequestsPerThread:I

.field public offline:Z

.field protected requestHandler:Lcom/omniture/RequestHandler;

.field protected requestList:Ljava/util/Vector;

.field protected requestThreadID:I

.field protected requestThreads:Ljava/util/Hashtable;

.field public sendFromServer:Z

.field protected target:Ljava/lang/String;

.field public usePlugins:Z

.field protected version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 633
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/omniture/AppMeasurementBase;->randomNumGen:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/omniture/AppMeasurement_Variables;-><init>()V

    .line 11
    const-string v1, ""

    iput-object v1, p0, Lcom/omniture/AppMeasurementBase;->target:Ljava/lang/String;

    .line 14
    iput-boolean v2, p0, Lcom/omniture/AppMeasurementBase;->usePlugins:Z

    .line 52
    iput-object v3, p0, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    .line 53
    iput-object v3, p0, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    .line 54
    iput v2, p0, Lcom/omniture/AppMeasurementBase;->requestThreadID:I

    .line 55
    iput v4, p0, Lcom/omniture/AppMeasurementBase;->maxRequestThreads:I

    .line 56
    const/16 v1, 0x32

    iput v1, p0, Lcom/omniture/AppMeasurementBase;->maxRequestsPerThread:I

    .line 59
    iput-boolean v2, p0, Lcom/omniture/AppMeasurementBase;->offline:Z

    .line 82
    iput-boolean v2, p0, Lcom/omniture/AppMeasurementBase;->sendFromServer:Z

    .line 1219
    iput v2, p0, Lcom/omniture/AppMeasurementBase;->_1_referrer:I

    .line 1265
    iput-object v3, p0, Lcom/omniture/AppMeasurementBase;->requestHandler:Lcom/omniture/RequestHandler;

    .line 95
    move-object v0, p0

    .line 97
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    const-string v1, "JAVA-1.2.4"

    iput-object v1, v0, Lcom/omniture/AppMeasurementBase;->version:Ljava/lang/String;

    .line 100
    iput-boolean v2, v0, Lcom/omniture/AppMeasurementBase;->ssl:Z

    .line 101
    iput-boolean v2, v0, Lcom/omniture/AppMeasurementBase;->linkLeaveQueryString:Z

    .line 102
    iput-boolean v2, v0, Lcom/omniture/AppMeasurementBase;->debugTracking:Z

    .line 103
    const-string v1, "UTF-8"

    iput-object v1, v0, Lcom/omniture/AppMeasurementBase;->charSet:Ljava/lang/String;

    .line 105
    iput-boolean v4, v0, Lcom/omniture/AppMeasurementBase;->sendFromServer:Z

    .line 108
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/omniture/AppMeasurementBase;->contextData:Ljava/util/Hashtable;

    .line 109
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/omniture/AppMeasurementBase;->retrieveLightData:Ljava/util/Hashtable;

    .line 110
    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "str"

    .prologue
    const/16 v9, 0x30

    const/4 v6, 0x0

    .line 273
    if-nez p0, :cond_1

    move-object v4, v6

    .line 304
    .end local p0
    .local v3, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v4

    .line 278
    .end local v3           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "ISO-8859-1"

    invoke-direct {v5, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local p0
    .local v5, str:Ljava/lang/String;
    :try_start_1
    const-string v4, ""

    .line 285
    .local v4, newStr:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, chNum:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 286
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 287
    .local v0, ch:C
    const/16 v7, 0x61

    if-lt v0, v7, :cond_2

    const/16 v7, 0x7a

    if-le v0, v7, :cond_5

    :cond_2
    const/16 v7, 0x41

    if-lt v0, v7, :cond_3

    const/16 v7, 0x5a

    if-le v0, v7, :cond_5

    :cond_3
    if-lt v0, v9, :cond_4

    const/16 v7, 0x39

    if-le v0, v7, :cond_5

    :cond_4
    const-string v7, ".-*_"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_6

    .line 291
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    .end local v0           #ch:C
    .end local v2           #chNum:I
    .end local v4           #newStr:Ljava/lang/String;
    .end local v5           #str:Ljava/lang/String;
    .restart local p0
    :catch_0
    move-exception v3

    .restart local v3       #e:Ljava/lang/Exception;
    move-object v4, v6

    .line 280
    goto :goto_0

    .line 293
    .end local v3           #e:Ljava/lang/Exception;
    .end local p0
    .restart local v0       #ch:C
    .restart local v2       #chNum:I
    .restart local v4       #newStr:Ljava/lang/String;
    .restart local v5       #str:Ljava/lang/String;
    :cond_6
    const/16 v7, 0x10

    invoke-static {v0, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, chHex:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_2

    .line 300
    .end local v0           #ch:C
    .end local v1           #chHex:Ljava/lang/String;
    .end local v2           #chNum:I
    .end local v4           #newStr:Ljava/lang/String;
    :catch_1
    move-exception v3

    .restart local v3       #e:Ljava/lang/Exception;
    move-object v4, v6

    .line 301
    goto/16 :goto_0
.end method

.method private serializeToQueryString(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "varKey"
    .parameter "varValue"
    .parameter "varFilter"
    .parameter "varFilterPrefix"

    .prologue
    .line 766
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/omniture/AppMeasurementBase;->serializeToQueryString(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private serializeToQueryString(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .parameter "varKey"
    .parameter "varValue"
    .parameter "varFilter"
    .parameter "varFilterPrefix"
    .parameter "filter"

    .prologue
    .line 669
    move-object/from16 v1, p0

    .line 670
    .local v1, s:Lcom/omniture/AppMeasurementBase;
    const-string v12, ""

    .line 678
    .local v12, queryString:Ljava/lang/String;
    const/4 v8, 0x0

    .line 682
    .local v8, nestedFilterList:Ljava/util/Vector;
    const-string v3, "contextData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 683
    const-string p1, "c"

    .line 686
    :cond_0
    if-eqz p2, :cond_16

    .line 687
    invoke-virtual/range {p2 .. p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 688
    .local v7, keys:Ljava/util/Enumeration;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 689
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 690
    .local v13, subVarKey:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 691
    .local v16, subVarValue:Ljava/lang/Object;
    if-eqz p5, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 694
    :cond_3
    const/4 v9, 0x0

    .line 695
    .local v9, nestedFilterMatch:Z
    if-eqz v8, :cond_6

    .line 696
    const/4 v10, 0x0

    .local v10, nestedFilterNum:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v10, v3, :cond_6

    .line 697
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v8, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v4, v3, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v8, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v13, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 698
    const/4 v9, 0x1

    .line 696
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 691
    .end local v9           #nestedFilterMatch:Z
    .end local v10           #nestedFilterNum:I
    :cond_5
    const-string v3, ""

    goto :goto_1

    .line 702
    .restart local v9       #nestedFilterMatch:Z
    :cond_6
    if-nez v9, :cond_1

    .line 703
    const-string v3, ""

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 706
    :cond_7
    if-eqz p5, :cond_8

    .line 707
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 709
    :cond_8
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 710
    const-string v3, "."

    invoke-virtual {v13, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 711
    .local v11, nestedKeyEnd:I
    if-lez v11, :cond_b

    .line 712
    const/4 v3, 0x0

    invoke-virtual {v13, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, nestedKey:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_a

    move-object/from16 v3, p5

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 714
    .local v6, nestedFilter:Ljava/lang/String;
    if-nez v8, :cond_9

    .line 715
    new-instance v8, Ljava/util/Vector;

    .end local v8           #nestedFilterList:Ljava/util/Vector;
    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 717
    .restart local v8       #nestedFilterList:Ljava/util/Vector;
    :cond_9
    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/omniture/AppMeasurementBase;->serializeToQueryString(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 713
    .end local v6           #nestedFilter:Ljava/lang/String;
    :cond_a
    const-string v3, ""

    goto :goto_3

    .line 720
    .end local v2           #nestedKey:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/omniture/AppMeasurementBase;->isBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 722
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/omniture/AppMeasurementBase;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 723
    const-string v16, "true"

    .line 728
    .end local v16           #subVarValue:Ljava/lang/Object;
    :cond_c
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 729
    const-string v3, "retrieveLightData"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, ".contextData."

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_d

    .line 730
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 731
    .local v14, subVarPrefix:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 732
    .local v15, subVarSuffix:Ljava/lang/String;
    const-string v3, "transactionID"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 733
    const-string v13, "xact"

    .line 751
    .end local v14           #subVarPrefix:Ljava/lang/String;
    .end local v15           #subVarSuffix:Ljava/lang/String;
    :cond_d
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v13}, Lcom/omniture/AppMeasurementBase;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/omniture/AppMeasurementBase;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 725
    .restart local v16       #subVarValue:Ljava/lang/Object;
    :cond_e
    const-string v16, "false"

    .local v16, subVarValue:Ljava/lang/String;
    goto :goto_4

    .line 734
    .end local v16           #subVarValue:Ljava/lang/String;
    .restart local v14       #subVarPrefix:Ljava/lang/String;
    .restart local v15       #subVarSuffix:Ljava/lang/String;
    :cond_f
    const-string v3, "channel"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 735
    const-string v13, "ch"

    goto :goto_5

    .line 736
    :cond_10
    const-string v3, "campaign"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 737
    const-string v13, "v0"

    goto :goto_5

    .line 738
    :cond_11
    invoke-virtual {v1, v15}, Lcom/omniture/AppMeasurementBase;->isNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 739
    const-string v3, "prop"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .line 741
    :cond_12
    const-string v3, "eVar"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 743
    :cond_13
    const-string v3, "list"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "l"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 745
    :cond_14
    const-string v3, "hier"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 747
    check-cast v16, Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0xff

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #subVarValue:Ljava/lang/String;
    goto/16 :goto_5

    .line 758
    .end local v9           #nestedFilterMatch:Z
    .end local v11           #nestedKeyEnd:I
    .end local v13           #subVarKey:Ljava/lang/String;
    .end local v14           #subVarPrefix:Ljava/lang/String;
    .end local v15           #subVarSuffix:Ljava/lang/String;
    .end local v16           #subVarValue:Ljava/lang/String;
    :cond_15
    const-string v3, ""

    if-eq v12, v3, :cond_16

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 763
    .end local v7           #keys:Ljava/util/Enumeration;
    :cond_16
    return-object v12
.end method

.method public static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "delim"
    .parameter "str"

    .prologue
    const/4 v4, 0x0

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, delimPos:I
    const/4 v2, 0x1

    .line 219
    .local v2, partNum:I
    :goto_0
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 220
    add-int/lit8 v2, v2, 0x1

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 223
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    .line 225
    .local v1, partList:[Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 226
    aput-object p1, v1, v4

    .line 237
    :goto_1
    return-object v1

    .line 228
    :cond_1
    const/4 v2, 0x0

    .line 229
    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 230
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 234
    :cond_2
    aput-object p1, v1, v2

    goto :goto_1
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "str"

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0x25

    .line 313
    if-nez p0, :cond_1

    move-object p0, v6

    .line 340
    .end local p0
    .local v3, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object p0

    .line 317
    .end local v3           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_0

    .line 322
    :try_start_0
    const-string v4, ""

    .line 323
    .local v4, newStr:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, chNum:I
    move-object v5, v4

    .line 324
    .end local v4           #newStr:Ljava/lang/String;
    .local v5, newStr:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 325
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 326
    .local v0, ch:C
    if-ne v0, v9, :cond_2

    .line 327
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, chHex:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 329
    .end local v5           #newStr:Ljava/lang/String;
    .restart local v4       #newStr:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x3

    move-object v5, v4

    .end local v4           #newStr:Ljava/lang/String;
    .restart local v5       #newStr:Ljava/lang/String;
    goto :goto_1

    .line 331
    .end local v1           #chHex:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2b

    if-ne v0, v8, :cond_3

    const/16 v0, 0x20

    .end local v0           #ch:C
    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 332
    .end local v5           #newStr:Ljava/lang/String;
    .restart local v4       #newStr:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move-object v5, v4

    .end local v4           #newStr:Ljava/lang/String;
    .restart local v5       #newStr:Ljava/lang/String;
    goto :goto_1

    .line 335
    :cond_4
    new-instance v4, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #newStr:Ljava/lang/String;
    .restart local v4       #newStr:Ljava/lang/String;
    move-object p0, v4

    .line 340
    goto :goto_0

    .line 336
    .end local v2           #chNum:I
    .end local v4           #newStr:Ljava/lang/String;
    :catch_0
    move-exception v3

    .restart local v3       #e:Ljava/lang/Exception;
    move-object p0, v6

    .line 337
    goto :goto_0
.end method


# virtual methods
.method protected _doPlugins()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected _doRequest(Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 1
    .parameter "url"
    .parameter "headers"

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method protected _hasDoPlugins()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method protected _hasDoRequest()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public clearVars()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1052
    move-object v0, p0

    .line 1055
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    const/4 v1, 0x0

    .line 1056
    .local v1, varKey:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1058
    .local v3, varPrefix:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, varNum:I
    :goto_0
    iget-object v4, v0, Lcom/omniture/AppMeasurementBase;->accountVarList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 1059
    iget-object v4, v0, Lcom/omniture/AppMeasurementBase;->accountVarList:[Ljava/lang/String;

    aget-object v1, v4, v2

    .line 1062
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 1063
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1069
    :goto_1
    const-string v4, "channel"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "events"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "purchaseID"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "transactionID"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "products"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "state"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "zip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "campaign"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "prop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "eVar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "hier"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1081
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/omniture/AppMeasurementBase;->setAccountVar(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1065
    :cond_2
    const-string v3, ""

    goto :goto_1

    .line 1084
    :cond_3
    return-void
.end method

.method protected enqueueRequest(Ljava/lang/String;)V
    .locals 13
    .parameter "request"

    .prologue
    const/4 v12, 0x0

    .line 513
    move-object v6, p0

    .line 516
    .local v6, s:Lcom/omniture/AppMeasurementBase;
    iget-object v9, v6, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    if-nez v9, :cond_0

    .line 517
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, v6, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    .line 519
    invoke-virtual {v6}, Lcom/omniture/AppMeasurementBase;->offlineRequestListRead()V

    .line 522
    :cond_0
    invoke-virtual {v6}, Lcom/omniture/AppMeasurementBase;->requestThreadStart()V

    .line 525
    iget-object v10, v6, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    monitor-enter v10

    .line 526
    :try_start_0
    iget-boolean v9, v6, Lcom/omniture/AppMeasurementBase;->trackOffline:Z

    invoke-virtual {v6, v9}, Lcom/omniture/AppMeasurementBase;->isSet(Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 527
    iget v9, v6, Lcom/omniture/AppMeasurementBase;->offlineLimit:I

    invoke-virtual {v6, v9}, Lcom/omniture/AppMeasurementBase;->isSet(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 528
    const/16 v9, 0xa

    iput v9, v6, Lcom/omniture/AppMeasurementBase;->offlineLimit:I

    .line 530
    :cond_1
    iget-object v9, v6, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    iget v11, v6, Lcom/omniture/AppMeasurementBase;->offlineLimit:I

    if-lt v9, v11, :cond_2

    .line 531
    iget-object v9, v6, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/Vector;->removeElementAt(I)V

    .line 534
    :cond_2
    iget-object v9, v6, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    invoke-virtual {v9, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 535
    iget-object v9, v6, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 536
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-boolean v9, v6, Lcom/omniture/AppMeasurementBase;->debugTracking:Z

    invoke-virtual {v6, v9}, Lcom/omniture/AppMeasurementBase;->isSet(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 542
    const-string v0, "AppMeasurement Debug: "

    .line 546
    .local v0, debug:Ljava/lang/String;
    const-string v9, "\t"

    invoke-static {v9, p1}, Lcom/omniture/AppMeasurementBase;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 547
    .local v5, requestParts:[Ljava/lang/String;
    array-length v9, v5

    if-lez v9, :cond_6

    aget-object v9, v5, v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 548
    aget-object v7, v5, v12

    .line 549
    .local v7, url:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    const-string v9, "&"

    const-string v10, "\t"

    invoke-static {v10, v7}, Lcom/omniture/AppMeasurementBase;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v12

    invoke-static {v9, v10}, Lcom/omniture/AppMeasurementBase;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, debugLines:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, debugLineNum:I
    :goto_0
    array-length v9, v2

    if-ge v1, v9, :cond_3

    .line 552
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v1

    invoke-static {v10}, Lcom/omniture/AppMeasurementBase;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    .end local v0           #debug:Ljava/lang/String;
    .end local v1           #debugLineNum:I
    .end local v2           #debugLines:[Ljava/lang/String;
    .end local v5           #requestParts:[Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 554
    .restart local v0       #debug:Ljava/lang/String;
    .restart local v1       #debugLineNum:I
    .restart local v2       #debugLines:[Ljava/lang/String;
    .restart local v5       #requestParts:[Ljava/lang/String;
    .restart local v7       #url:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    .local v4, requestPartNum:I
    :goto_1
    array-length v9, v5

    if-ge v4, v9, :cond_5

    .line 555
    aget-object v3, v5, v4

    .line 556
    .local v3, key:Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v9, ""

    if-eq v3, v9, :cond_4

    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    if-ge v4, v9, :cond_4

    .line 557
    add-int/lit8 v9, v4, 0x1

    aget-object v8, v5, v9

    .line 558
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string v9, ""

    if-eq v8, v9, :cond_4

    .line 559
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .end local v8           #value:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 563
    .end local v3           #key:Ljava/lang/String;
    :cond_5
    invoke-virtual {v6, v0}, Lcom/omniture/AppMeasurementBase;->logDebug(Ljava/lang/String;)V

    .line 566
    .end local v0           #debug:Ljava/lang/String;
    .end local v1           #debugLineNum:I
    .end local v2           #debugLines:[Ljava/lang/String;
    .end local v4           #requestPartNum:I
    .end local v5           #requestParts:[Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public forceOffline()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .line 63
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/omniture/AppMeasurementBase;->offline:Z

    .line 64
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 65
    iget-object v2, v0, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 67
    monitor-exit v2

    .line 69
    :cond_0
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceOnline()V
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .line 73
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/omniture/AppMeasurementBase;->offline:Z

    .line 74
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 75
    iget-object v2, v0, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 77
    monitor-exit v2

    .line 79
    :cond_0
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultAcceptLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1249
    const-string v0, ""

    return-object v0
.end method

.method protected getDefaultPageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1257
    const-string v0, ""

    return-object v0
.end method

.method protected getDefaultReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1261
    const-string v0, ""

    return-object v0
.end method

.method protected getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1245
    const-string v0, ""

    return-object v0
.end method

.method protected getDefaultVisitorID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1253
    const-string v0, ""

    return-object v0
.end method

.method protected getQueryString()Ljava/lang/String;
    .locals 21

    .prologue
    .line 770
    move-object/from16 v2, p0

    .line 771
    .local v2, s:Lcom/omniture/AppMeasurementBase;
    const-string v10, ""

    .line 775
    .local v10, queryString:Ljava/lang/String;
    const/4 v6, 0x0

    .line 776
    .local v6, varKey:Ljava/lang/String;
    const/16 v16, 0x0

    .line 777
    .local v16, varValue:Ljava/lang/String;
    const/16 v19, 0x0

    .line 780
    .local v19, varValueParts:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 781
    .local v13, varPrefix:Ljava/lang/String;
    const/4 v15, 0x0

    .line 782
    .local v15, varSuffix:Ljava/lang/String;
    const-string v5, ""

    .line 783
    .local v5, varFilter:Ljava/lang/String;
    const-string v8, ""

    .line 784
    .local v8, eventFilter:Ljava/lang/String;
    const-string v9, ""

    .line 787
    .local v9, events:Ljava/lang/String;
    iget-object v3, v2, Lcom/omniture/AppMeasurementBase;->lightProfileID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 788
    iget-object v11, v2, Lcom/omniture/AppMeasurementBase;->lightVarList:[Ljava/lang/String;

    .line 789
    .local v11, varList:[Ljava/lang/String;
    iget-object v5, v2, Lcom/omniture/AppMeasurementBase;->lightTrackVars:Ljava/lang/String;

    .line 790
    invoke-virtual {v2, v5}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    iget-object v7, v2, Lcom/omniture/AppMeasurementBase;->lightRequiredVarList:[Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Lcom/omniture/AppMeasurementBase;->joinArray(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 815
    :cond_0
    :goto_0
    const/4 v12, 0x0

    .local v12, varNum:I
    :goto_1
    array-length v3, v11

    if-ge v12, v3, :cond_33

    .line 816
    aget-object v6, v11, v12

    .line 817
    invoke-virtual {v2, v6}, Lcom/omniture/AppMeasurementBase;->getAccountVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 818
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_b

    .line 819
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 820
    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 826
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 827
    const-string v3, "events"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v9}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 828
    move-object/from16 v16, v9

    .line 829
    const-string v9, ""

    .line 833
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v5}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 835
    :cond_2
    const-string v3, "timestamp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 836
    const-string v6, "ts"

    .line 943
    :cond_3
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Lcom/omniture/AppMeasurementBase;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x3

    if-le v3, v7, :cond_4

    const/4 v3, 0x0

    const/4 v7, 0x3

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v7, "pev"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_4
    invoke-static/range {v16 .. v16}, Lcom/omniture/AppMeasurementBase;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 815
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 794
    .end local v11           #varList:[Ljava/lang/String;
    .end local v12           #varNum:I
    :cond_6
    iget-object v11, v2, Lcom/omniture/AppMeasurementBase;->accountVarList:[Ljava/lang/String;

    .line 797
    .restart local v11       #varList:[Ljava/lang/String;
    iget-object v3, v2, Lcom/omniture/AppMeasurementBase;->linkType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 798
    iget-object v5, v2, Lcom/omniture/AppMeasurementBase;->linkTrackVars:Ljava/lang/String;

    .line 799
    iget-object v8, v2, Lcom/omniture/AppMeasurementBase;->linkTrackEvents:Ljava/lang/String;

    .line 801
    :cond_7
    invoke-virtual {v2, v5}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    iget-object v7, v2, Lcom/omniture/AppMeasurementBase;->requiredVarList:[Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Lcom/omniture/AppMeasurementBase;->joinArray(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 804
    :cond_8
    invoke-virtual {v2, v8}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 809
    :cond_9
    iget-object v3, v2, Lcom/omniture/AppMeasurementBase;->events2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, ""

    if-eq v9, v3, :cond_a

    const-string v3, ","

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/omniture/AppMeasurementBase;->events2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_a
    const-string v3, ""

    goto :goto_5

    .line 822
    .restart local v12       #varNum:I
    :cond_b
    const/4 v13, 0x0

    .line 823
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 837
    :cond_c
    const-string v3, "dynamicVariablePrefix"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 838
    const-string v6, "D"

    goto/16 :goto_3

    .line 839
    :cond_d
    const-string v3, "visitorID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 840
    const-string v6, "vid"

    goto/16 :goto_3

    .line 841
    :cond_e
    const-string v3, "pageURL"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 842
    const-string v6, "g"

    goto/16 :goto_3

    .line 843
    :cond_f
    const-string v3, "referrer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 844
    const-string v6, "r"

    goto/16 :goto_3

    .line 845
    :cond_10
    const-string v3, "vmk"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "visitorMigrationKey"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 846
    :cond_11
    const-string v6, "vmt"

    goto/16 :goto_3

    .line 847
    :cond_12
    const-string v3, "visitorMigrationServer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 848
    const-string v6, "vmf"

    .line 849
    iget-boolean v3, v2, Lcom/omniture/AppMeasurementBase;->ssl:Z

    invoke-virtual {v2, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/omniture/AppMeasurementBase;->visitorMigrationServerSecure:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 850
    const-string v16, ""

    goto/16 :goto_3

    .line 852
    :cond_13
    const-string v3, "visitorMigrationServerSecure"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 853
    const-string v6, "vmf"

    .line 854
    iget-boolean v3, v2, Lcom/omniture/AppMeasurementBase;->ssl:Z

    invoke-virtual {v2, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Z)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/omniture/AppMeasurementBase;->visitorMigrationServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 855
    const-string v16, ""

    goto/16 :goto_3

    .line 857
    :cond_14
    const-string v3, "charSet"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 858
    const-string v6, "ce"

    goto/16 :goto_3

    .line 859
    :cond_15
    const-string v3, "visitorNamespace"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 860
    const-string v6, "ns"

    goto/16 :goto_3

    .line 861
    :cond_16
    const-string v3, "cookieDomainPeriods"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 862
    const-string v6, "cdp"

    goto/16 :goto_3

    .line 863
    :cond_17
    const-string v3, "cookieLifetime"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 864
    const-string v6, "cl"

    goto/16 :goto_3

    .line 865
    :cond_18
    const-string v3, "variableProvider"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 866
    const-string v6, "vvp"

    goto/16 :goto_3

    .line 867
    :cond_19
    const-string v3, "currencyCode"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 868
    const-string v6, "cc"

    goto/16 :goto_3

    .line 869
    :cond_1a
    const-string v3, "channel"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 870
    const-string v6, "ch"

    goto/16 :goto_3

    .line 871
    :cond_1b
    const-string v3, "transactionID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 872
    const-string v6, "xact"

    goto/16 :goto_3

    .line 873
    :cond_1c
    const-string v3, "campaign"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 874
    const-string v6, "v0"

    goto/16 :goto_3

    .line 875
    :cond_1d
    const-string v3, "resolution"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 876
    const-string v6, "s"

    goto/16 :goto_3

    .line 877
    :cond_1e
    const-string v3, "events"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 879
    invoke-virtual {v2, v9}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, ""

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_23

    const-string v3, ","

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 884
    :cond_1f
    invoke-virtual {v2, v8}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 885
    const-string v3, ","

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/omniture/AppMeasurementBase;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 886
    const-string v16, ""

    .line 887
    const/4 v14, 0x0

    .local v14, varSubNum:I
    :goto_7
    move-object/from16 v0, v19

    array-length v3, v0

    if-ge v14, v3, :cond_3

    .line 888
    aget-object v17, v19, v14

    .line 889
    .local v17, varValuePart:Ljava/lang/String;
    const-string v3, "="

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 890
    .local v18, varValuePartPos:I
    if-ltz v18, :cond_20

    .line 891
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 893
    :cond_20
    const-string v3, ":"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 894
    if-ltz v18, :cond_21

    .line 895
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 897
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_22

    .line 898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, ","

    :goto_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v19, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 887
    :cond_22
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 880
    .end local v14           #varSubNum:I
    .end local v17           #varValuePart:Ljava/lang/String;
    .end local v18           #varValuePartPos:I
    :cond_23
    const-string v3, ""

    goto/16 :goto_6

    .line 898
    .restart local v14       #varSubNum:I
    .restart local v17       #varValuePart:Ljava/lang/String;
    .restart local v18       #varValuePartPos:I
    :cond_24
    const-string v3, ""

    goto :goto_8

    .line 902
    .end local v14           #varSubNum:I
    .end local v17           #varValuePart:Ljava/lang/String;
    .end local v18           #varValuePartPos:I
    :cond_25
    const-string v3, "events2"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 903
    const-string v16, ""

    goto/16 :goto_3

    .line 904
    :cond_26
    const-string v3, "contextData"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v3, "c"

    iget-object v4, v2, Lcom/omniture/AppMeasurementBase;->contextData:Ljava/util/Hashtable;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/omniture/AppMeasurementBase;->serializeToQueryString(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 906
    const-string v16, ""

    goto/16 :goto_3

    .line 907
    :cond_27
    const-string v3, "lightProfileID"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 908
    const-string v6, "mtp"

    goto/16 :goto_3

    .line 909
    :cond_28
    const-string v3, "lightStoreForSeconds"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 910
    const-string v6, "mtss"

    .line 911
    iget-object v3, v2, Lcom/omniture/AppMeasurementBase;->lightProfileID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 912
    const-string v16, ""

    goto/16 :goto_3

    .line 914
    :cond_29
    const-string v3, "lightIncrementBy"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 915
    const-string v6, "mti"

    .line 916
    iget-object v3, v2, Lcom/omniture/AppMeasurementBase;->lightProfileID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 917
    const-string v16, ""

    goto/16 :goto_3

    .line 919
    :cond_2a
    const-string v3, "retrieveLightProfiles"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 920
    const-string v6, "mtsr"

    goto/16 :goto_3

    .line 921
    :cond_2b
    const-string v3, "deleteLightProfiles"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 922
    const-string v6, "mtsd"

    goto/16 :goto_3

    .line 923
    :cond_2c
    const-string v3, "retrieveLightData"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 924
    iget-object v3, v2, Lcom/omniture/AppMeasurementBase;->retrieveLightProfiles:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v3, "mts"

    iget-object v4, v2, Lcom/omniture/AppMeasurementBase;->retrieveLightData:Ljava/util/Hashtable;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/omniture/AppMeasurementBase;->serializeToQueryString(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 927
    :cond_2d
    const-string v16, ""

    goto/16 :goto_3

    .line 928
    :cond_2e
    invoke-virtual {v2, v15}, Lcom/omniture/AppMeasurementBase;->isNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 929
    const-string v3, "prop"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 931
    :cond_2f
    const-string v3, "eVar"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 933
    :cond_30
    const-string v3, "list"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "l"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 935
    :cond_31
    const-string v3, "hier"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 937
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_3

    .line 938
    const/4 v3, 0x0

    const/16 v4, 0xff

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    :cond_32
    move-object/from16 v3, v16

    .line 944
    goto/16 :goto_4

    .line 949
    :cond_33
    return-object v10
.end method

.method protected getRequestHandler()Lcom/omniture/RequestHandler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/omniture/AppMeasurementBase;->requestHandler:Lcom/omniture/RequestHandler;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/omniture/DefaultRequestHandler;

    invoke-direct {v0}, Lcom/omniture/DefaultRequestHandler;-><init>()V

    iput-object v0, p0, Lcom/omniture/AppMeasurementBase;->requestHandler:Lcom/omniture/RequestHandler;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/omniture/AppMeasurementBase;->requestHandler:Lcom/omniture/RequestHandler;

    return-object v0
.end method

.method public getTime()D
    .locals 4

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/omniture/AppMeasurementBase;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 350
    .local v0, tm:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    return-wide v2
.end method

.method protected handleLinkTracking()V
    .locals 7

    .prologue
    .line 636
    move-object v4, p0

    .line 638
    .local v4, s:Lcom/omniture/AppMeasurementBase;
    iget-object v1, v4, Lcom/omniture/AppMeasurementBase;->linkType:Ljava/lang/String;

    .line 639
    .local v1, linkType:Ljava/lang/String;
    iget-object v2, v4, Lcom/omniture/AppMeasurementBase;->linkURL:Ljava/lang/String;

    .line 640
    .local v2, linkURL:Ljava/lang/String;
    iget-object v0, v4, Lcom/omniture/AppMeasurementBase;->linkName:Ljava/lang/String;

    .line 642
    .local v0, linkName:Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v2}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 643
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 646
    const-string v5, "d"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "e"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 647
    const-string v1, "o"

    .line 651
    :cond_1
    invoke-virtual {v4, v2}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lcom/omniture/AppMeasurementBase;->linkLeaveQueryString:Z

    if-nez v5, :cond_2

    .line 652
    const-string v5, "?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 653
    .local v3, queryStringStart:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 654
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 659
    .end local v3           #queryStringStart:I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lnk_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/omniture/AppMeasurementBase;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/omniture/AppMeasurementBase;->pe:Ljava/lang/String;

    .line 660
    invoke-static {v2}, Lcom/omniture/AppMeasurementBase;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/omniture/AppMeasurementBase;->pev1:Ljava/lang/String;

    .line 661
    invoke-static {v0}, Lcom/omniture/AppMeasurementBase;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/omniture/AppMeasurementBase;->pev2:Ljava/lang/String;

    .line 663
    :cond_3
    return-void
.end method

.method protected handleRequestList()V
    .locals 20

    .prologue
    .line 374
    move-object/from16 v13, p0

    .line 381
    .local v13, s:Lcom/omniture/AppMeasurementBase;
    const-string v7, ""

    .line 383
    .local v7, lastRequest:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 386
    .local v8, lastTime:D
    :cond_0
    :goto_0
    const/4 v12, 0x0

    .line 388
    .local v12, requestSent:Z
    iget-object v0, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 389
    :cond_1
    :try_start_0
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-eqz v15, :cond_3

    .line 392
    :try_start_1
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    invoke-virtual {v15}, Ljava/util/Hashtable;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    .line 393
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :goto_1
    return-void

    .line 395
    :cond_2
    :try_start_3
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    const-wide/16 v18, 0x3e8

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 398
    :goto_2
    :try_start_4
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 399
    monitor-exit v16

    goto :goto_1

    .line 404
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v15

    .line 402
    :cond_3
    :try_start_5
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 403
    .local v10, request:Ljava/lang/String;
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 404
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 405
    iget-boolean v15, v13, Lcom/omniture/AppMeasurementBase;->trackOffline:Z

    if-eqz v15, :cond_4

    iget-boolean v15, v13, Lcom/omniture/AppMeasurementBase;->offline:Z

    if-nez v15, :cond_7

    .line 407
    :cond_4
    iget-boolean v15, v13, Lcom/omniture/AppMeasurementBase;->trackOffline:Z

    if-eqz v15, :cond_5

    const-wide/16 v16, 0x0

    cmpl-double v15, v8, v16

    if-lez v15, :cond_5

    iget v15, v13, Lcom/omniture/AppMeasurementBase;->offlineThrottleDelay:I

    if-lez v15, :cond_5

    .line 408
    invoke-virtual {v13}, Lcom/omniture/AppMeasurementBase;->getTime()D

    move-result-wide v2

    .line 409
    .local v2, currentTime:D
    sub-double v4, v2, v8

    .line 410
    .local v4, diffTime:D
    iget v15, v13, Lcom/omniture/AppMeasurementBase;->offlineThrottleDelay:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    cmpg-double v15, v4, v16

    if-gez v15, :cond_5

    .line 412
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget v15, v13, Lcom/omniture/AppMeasurementBase;->offlineThrottleDelay:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    sub-double v16, v16, v4

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 417
    .end local v2           #currentTime:D
    .end local v4           #diffTime:D
    :cond_5
    :goto_3
    invoke-static {v10}, Lcom/omniture/RequestProperties;->parseRequestProperties(Ljava/lang/String;)Lcom/omniture/RequestProperties;

    move-result-object v11

    .line 418
    .local v11, requestProperties:Lcom/omniture/RequestProperties;
    invoke-virtual {v11}, Lcom/omniture/RequestProperties;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 419
    .local v14, url:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/omniture/RequestProperties;->getHeaders()Ljava/util/Hashtable;

    move-result-object v6

    .line 425
    .local v6, headers:Ljava/util/Hashtable;
    invoke-virtual {v13}, Lcom/omniture/AppMeasurementBase;->_hasDoRequest()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v13, v14, v6}, Lcom/omniture/AppMeasurementBase;->_doRequest(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 426
    const/4 v12, 0x1

    .line 435
    :cond_6
    :goto_4
    if-eqz v12, :cond_7

    .line 437
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-lez v15, :cond_a

    .line 438
    invoke-virtual {v13}, Lcom/omniture/AppMeasurementBase;->getTime()D

    move-result-wide v8

    .line 444
    .end local v6           #headers:Ljava/util/Hashtable;
    .end local v11           #requestProperties:Lcom/omniture/RequestProperties;
    .end local v14           #url:Ljava/lang/String;
    :cond_7
    :goto_5
    if-nez v12, :cond_b

    .line 445
    iget-boolean v15, v13, Lcom/omniture/AppMeasurementBase;->trackOffline:Z

    if-eqz v15, :cond_0

    .line 447
    iget-object v0, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 448
    :try_start_7
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v10, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 451
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8

    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    iget-object v0, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 453
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    iget-object v0, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 454
    invoke-virtual {v13}, Lcom/omniture/AppMeasurementBase;->offlineRequestListWrite()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 459
    :cond_8
    :try_start_8
    iget-object v15, v13, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    const-wide/16 v18, 0x1f4

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 461
    :goto_6
    :try_start_9
    monitor-exit v16

    goto/16 :goto_0

    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v15

    .line 430
    .restart local v6       #headers:Ljava/util/Hashtable;
    .restart local v11       #requestProperties:Lcom/omniture/RequestProperties;
    .restart local v14       #url:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/omniture/AppMeasurementBase;->getRequestHandler()Lcom/omniture/RequestHandler;

    move-result-object v15

    invoke-virtual {v15, v14, v6}, Lcom/omniture/RequestHandler;->sendRequest(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 431
    const/4 v12, 0x1

    goto :goto_4

    .line 440
    :cond_a
    const-wide/16 v8, 0x0

    goto :goto_5

    .line 464
    .end local v6           #headers:Ljava/util/Hashtable;
    .end local v11           #requestProperties:Lcom/omniture/RequestProperties;
    .end local v14           #url:Ljava/lang/String;
    :cond_b
    invoke-virtual {v13}, Lcom/omniture/AppMeasurementBase;->offlineRequestListDelete()V

    goto/16 :goto_0

    .line 460
    :catch_0
    move-exception v15

    goto :goto_6

    .line 413
    .restart local v2       #currentTime:D
    .restart local v4       #diffTime:D
    :catch_1
    move-exception v15

    goto/16 :goto_3

    .line 396
    .end local v2           #currentTime:D
    .end local v4           #diffTime:D
    .end local v10           #request:Ljava/lang/String;
    :catch_2
    move-exception v15

    goto/16 :goto_2
.end method

.method protected handleTechnology()V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method protected isBoolean(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 143
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 144
    .restart local p1
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected isInteger(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 133
    :try_start_0
    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 134
    .restart local p1
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isNumber(I)Z
    .locals 1
    .parameter "num"

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method protected isNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 205
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const/4 v1, 0x1

    .line 208
    :goto_0
    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSet(D)Z
    .locals 3
    .parameter "val"

    .prologue
    .line 170
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSet(F)Z
    .locals 4
    .parameter "val"

    .prologue
    .line 163
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSet(I)Z
    .locals 1
    .parameter "val"

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSet(Ljava/lang/Object;)Z
    .locals 1
    .parameter "val"

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-virtual {p0, p1}, Lcom/omniture/AppMeasurementBase;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0, p1}, Lcom/omniture/AppMeasurementBase;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0, p1}, Lcom/omniture/AppMeasurementBase;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p0, p1}, Lcom/omniture/AppMeasurementBase;->toInteger(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/omniture/AppMeasurementBase;->isSet(I)Z

    move-result v0

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p0, p1}, Lcom/omniture/AppMeasurementBase;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p0, p1}, Lcom/omniture/AppMeasurementBase;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Z)Z

    move-result v0

    goto :goto_0

    .line 196
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSet(Ljava/lang/String;)Z
    .locals 2
    .parameter "val"

    .prologue
    const/4 v0, 0x0

    .line 177
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSet(Z)Z
    .locals 0
    .parameter "val"

    .prologue
    .line 152
    return p1
.end method

.method protected isString(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 123
    :try_start_0
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 124
    .restart local p1
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public joinArray(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "delim"
    .parameter "partList"

    .prologue
    .line 241
    const-string v2, ""

    .line 242
    .local v2, str:Ljava/lang/String;
    const/4 v0, 0x1

    .line 245
    .local v0, isFirstValue:Z
    const/4 v1, 0x0

    .local v1, partNum:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 246
    if-nez v0, :cond_0

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    const/4 v0, 0x0

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return-object v2
.end method

.method public logDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 117
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected makeRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "cacheBusting"
    .parameter "queryString"

    .prologue
    .line 569
    move-object v4, p0

    .line 572
    .local v4, s:Lcom/omniture/AppMeasurementBase;
    iget-object v5, v4, Lcom/omniture/AppMeasurementBase;->trackingServer:Ljava/lang/String;

    .line 573
    .local v5, trackingServer:Ljava/lang/String;
    iget-object v0, v4, Lcom/omniture/AppMeasurementBase;->dc:Ljava/lang/String;

    .line 574
    .local v0, dc:Ljava/lang/String;
    iget-object v2, v4, Lcom/omniture/AppMeasurementBase;->visitorNamespace:Ljava/lang/String;

    .line 577
    .local v2, prefix:Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 579
    invoke-virtual {v4, v2}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 580
    iget-object v2, v4, Lcom/omniture/AppMeasurementBase;->account:Ljava/lang/String;

    .line 583
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 584
    .local v1, firstComma:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 585
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 589
    :cond_0
    const-string v6, "_"

    const-string v7, "-"

    invoke-virtual {v4, v2, v6, v7}, Lcom/omniture/AppMeasurementBase;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    const-string v8, "-"

    invoke-virtual {v4, v6, v7, v8}, Lcom/omniture/AppMeasurementBase;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 593
    .end local v1           #firstComma:I
    :cond_1
    invoke-virtual {v4, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 594
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 595
    const-string v6, "dc2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "122"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 596
    :cond_2
    const-string v0, "122"

    .line 604
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".2o7.net"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 609
    :cond_3
    :goto_1
    iget-boolean v6, v4, Lcom/omniture/AppMeasurementBase;->ssl:Z

    invoke-virtual {v4, v6}, Lcom/omniture/AppMeasurementBase;->isSet(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 610
    const-string v3, "https://"

    .line 615
    .local v3, request:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/b/ss/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/omniture/AppMeasurementBase;->account:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, v4, Lcom/omniture/AppMeasurementBase;->mobile:Z

    if-eqz v6, :cond_8

    const-string v6, "5."

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, v4, Lcom/omniture/AppMeasurementBase;->sendFromServer:Z

    if-eqz v6, :cond_9

    const-string v6, "0"

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/omniture/AppMeasurementBase;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v4, Lcom/omniture/AppMeasurementBase;->target:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v4, Lcom/omniture/AppMeasurementBase;->target:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?AQB=1&ndh=1&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&AQE=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 617
    iget-boolean v6, v4, Lcom/omniture/AppMeasurementBase;->sendFromServer:Z

    if-nez v6, :cond_b

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<img src=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" />"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 630
    :goto_6
    return-object v6

    .line 598
    .end local v3           #request:Ljava/lang/String;
    :cond_4
    const-string v0, "112"

    goto/16 :goto_0

    .line 601
    :cond_5
    const-string v0, "112"

    goto/16 :goto_0

    .line 605
    :cond_6
    iget-boolean v6, v4, Lcom/omniture/AppMeasurementBase;->ssl:Z

    invoke-virtual {v4, v6}, Lcom/omniture/AppMeasurementBase;->isSet(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/omniture/AppMeasurementBase;->trackingServerSecure:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 606
    iget-object v5, v4, Lcom/omniture/AppMeasurementBase;->trackingServerSecure:Ljava/lang/String;

    goto/16 :goto_1

    .line 612
    :cond_7
    const-string v3, "http://"

    .restart local v3       #request:Ljava/lang/String;
    goto/16 :goto_2

    .line 615
    :cond_8
    const-string v6, ""

    goto/16 :goto_3

    :cond_9
    const-string v6, "1"

    goto/16 :goto_4

    :cond_a
    const-string v6, ""

    goto :goto_5

    .line 621
    :cond_b
    iget-object v6, v4, Lcom/omniture/AppMeasurementBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\tUser-Agent\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/omniture/AppMeasurementBase;->userAgent:Ljava/lang/String;

    const-string v8, "\t"

    const-string v9, " "

    invoke-virtual {v4, v7, v8, v9}, Lcom/omniture/AppMeasurementBase;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, " "

    invoke-virtual {v4, v7, v8, v9}, Lcom/omniture/AppMeasurementBase;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r"

    const-string v9, " "

    invoke-virtual {v4, v7, v8, v9}, Lcom/omniture/AppMeasurementBase;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 624
    :cond_c
    iget-object v6, v4, Lcom/omniture/AppMeasurementBase;->acceptLanguage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 625
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\tAccept-Language\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/omniture/AppMeasurementBase;->acceptLanguage:Ljava/lang/String;

    const-string v8, "\t"

    const-string v9, " "

    invoke-virtual {v4, v7, v8, v9}, Lcom/omniture/AppMeasurementBase;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, " "

    invoke-virtual {v4, v7, v8, v9}, Lcom/omniture/AppMeasurementBase;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r"

    const-string v9, " "

    invoke-virtual {v4, v7, v8, v9}, Lcom/omniture/AppMeasurementBase;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 628
    :cond_d
    invoke-virtual {v4, v3}, Lcom/omniture/AppMeasurementBase;->enqueueRequest(Ljava/lang/String;)V

    .line 630
    const-string v6, ""

    goto/16 :goto_6
.end method

.method protected modulesUpdate()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method protected offlineRequestListDelete()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method protected offlineRequestListRead()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method protected offlineRequestListWrite()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "x"
    .parameter "o"
    .parameter "n"

    .prologue
    .line 256
    move-object v0, p1

    .line 257
    .local v0, y:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 261
    invoke-static {p2, v0}, Lcom/omniture/AppMeasurementBase;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/omniture/AppMeasurementBase;->joinArray(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_0
    return-object v0
.end method

.method protected requestRequest(Ljava/lang/String;)Z
    .locals 2
    .parameter "request"

    .prologue
    .line 357
    move-object v0, p0

    .line 359
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    invoke-virtual {v0, p1}, Lcom/omniture/AppMeasurementBase;->logDebug(Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x1

    return v1
.end method

.method protected requestThreadStart()V
    .locals 10

    .prologue
    .line 470
    move-object v3, p0

    .line 474
    .local v3, s:Lcom/omniture/AppMeasurementBase;
    iget v6, v3, Lcom/omniture/AppMeasurementBase;->maxRequestThreads:I

    invoke-virtual {v3, v6}, Lcom/omniture/AppMeasurementBase;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 475
    const/4 v6, 0x1

    iput v6, v3, Lcom/omniture/AppMeasurementBase;->maxRequestThreads:I

    .line 479
    :cond_0
    iget-object v6, v3, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    if-nez v6, :cond_1

    .line 480
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, v3, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    .line 483
    :cond_1
    iget-object v6, v3, Lcom/omniture/AppMeasurementBase;->requestList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    iget v7, v3, Lcom/omniture/AppMeasurementBase;->maxRequestsPerThread:I

    div-int/2addr v6, v7

    int-to-double v0, v6

    .line 484
    .local v0, numThreads:D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 485
    double-to-int v6, v0

    add-int/lit8 v5, v6, 0x1

    .line 486
    .local v5, threadsNeeded:I
    iget-object v7, v3, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    monitor-enter v7

    .line 487
    :goto_0
    :try_start_0
    iget-object v6, v3, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    if-ge v6, v5, :cond_3

    iget-object v6, v3, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    iget v8, v3, Lcom/omniture/AppMeasurementBase;->maxRequestThreads:I

    if-ge v6, v8, :cond_3

    .line 489
    iget-object v6, v3, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 490
    const/4 v6, 0x0

    iput v6, v3, Lcom/omniture/AppMeasurementBase;->requestThreadID:I

    .line 492
    :cond_2
    iget v4, v3, Lcom/omniture/AppMeasurementBase;->requestThreadID:I

    .line 493
    .local v4, threadID:I
    new-instance v2, Lcom/omniture/AppMeasurementBase$1;

    invoke-direct {v2, p0, v3, v4}, Lcom/omniture/AppMeasurementBase$1;-><init>(Lcom/omniture/AppMeasurementBase;Lcom/omniture/AppMeasurementBase;I)V

    .line 505
    .local v2, requestThread:Ljava/lang/Thread;
    iget-object v6, v3, Lcom/omniture/AppMeasurementBase;->requestThreads:Ljava/util/Hashtable;

    new-instance v8, Ljava/lang/Integer;

    iget v9, v3, Lcom/omniture/AppMeasurementBase;->requestThreadID:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 507
    iget v6, v3, Lcom/omniture/AppMeasurementBase;->requestThreadID:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lcom/omniture/AppMeasurementBase;->requestThreadID:I

    goto :goto_0

    .line 509
    .end local v2           #requestThread:Ljava/lang/Thread;
    .end local v4           #threadID:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    return-void
.end method

.method protected setDefaults()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1221
    move-object v0, p0

    .line 1223
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1224
    invoke-virtual {v0}, Lcom/omniture/AppMeasurementBase;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/omniture/AppMeasurementBase;->userAgent:Ljava/lang/String;

    .line 1226
    :cond_0
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->acceptLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1227
    invoke-virtual {v0}, Lcom/omniture/AppMeasurementBase;->getDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/omniture/AppMeasurementBase;->acceptLanguage:Ljava/lang/String;

    .line 1229
    :cond_1
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->visitorID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1230
    invoke-virtual {v0}, Lcom/omniture/AppMeasurementBase;->getDefaultVisitorID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/omniture/AppMeasurementBase;->visitorID:Ljava/lang/String;

    .line 1232
    :cond_2
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->pageURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1233
    invoke-virtual {v0}, Lcom/omniture/AppMeasurementBase;->getDefaultPageURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/omniture/AppMeasurementBase;->pageURL:Ljava/lang/String;

    .line 1235
    :cond_3
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->pageURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->pageURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 1236
    iput-boolean v3, v0, Lcom/omniture/AppMeasurementBase;->ssl:Z

    .line 1238
    :cond_4
    iget-object v1, v0, Lcom/omniture/AppMeasurementBase;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, v0, Lcom/omniture/AppMeasurementBase;->_1_referrer:I

    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1239
    invoke-virtual {v0}, Lcom/omniture/AppMeasurementBase;->getDefaultReferrer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/omniture/AppMeasurementBase;->referrer:Ljava/lang/String;

    .line 1240
    iput v3, v0, Lcom/omniture/AppMeasurementBase;->_1_referrer:I

    .line 1242
    :cond_5
    return-void
.end method

.method public setRequestHandler(Lcom/omniture/RequestHandler;)V
    .locals 0
    .parameter "requestHandler"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/omniture/AppMeasurementBase;->requestHandler:Lcom/omniture/RequestHandler;

    .line 36
    return-void
.end method

.method protected toBoolean(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 148
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
    .line 138
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .parameter "value"

    .prologue
    .line 128
    check-cast p1, Ljava/lang/String;

    .end local p1
    return-object p1
.end method

.method public track()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1172
    move-object v0, p0

    .line 1173
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->track(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public track(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 18
    .parameter "variableOverrides"

    .prologue
    .line 1087
    move-object/from16 v12, p0

    .line 1088
    .local v12, s:Lcom/omniture/AppMeasurementBase;
    const-string v10, ""

    .line 1090
    .local v10, code:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1091
    .local v15, variableOverridesBackup:Ljava/util/Hashtable;
    invoke-virtual/range {p0 .. p0}, Lcom/omniture/AppMeasurementBase;->getCalendar()Ljava/util/Calendar;

    move-result-object v14

    .line 1092
    .local v14, tm:Ljava/util/Calendar;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/omniture/AppMeasurementBase;->randomNumGen:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x4197d78400000000L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1093
    .local v9, cacheBusting:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x7

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xb

    invoke-virtual {v14, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int v8, v8, v17

    mul-int/lit8 v8, v8, 0x3c

    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int v8, v8, v17

    mul-int/lit16 v8, v8, 0x3e8

    const/16 v17, 0xe

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int v8, v8, v17

    invoke-virtual/range {v2 .. v8}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v2

    const v3, 0xea60

    div-int/2addr v2, v3

    mul-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1110
    .local v13, time:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/omniture/AppMeasurementBase;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1113
    .local v11, queryString:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1114
    new-instance v15, Ljava/util/Hashtable;

    .end local v15           #variableOverridesBackup:Ljava/util/Hashtable;
    invoke-direct {v15}, Ljava/util/Hashtable;-><init>()V

    .line 1115
    .restart local v15       #variableOverridesBackup:Ljava/util/Hashtable;
    invoke-virtual {v12, v15}, Lcom/omniture/AppMeasurementBase;->variableOverridesBuild(Ljava/util/Hashtable;)V

    .line 1116
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/omniture/AppMeasurementBase;->variableOverridesApply(Ljava/util/Hashtable;)V

    .line 1120
    :cond_0
    iget-boolean v2, v12, Lcom/omniture/AppMeasurementBase;->usePlugins:Z

    if-eqz v2, :cond_1

    invoke-virtual {v12}, Lcom/omniture/AppMeasurementBase;->_hasDoPlugins()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1121
    invoke-virtual {v12}, Lcom/omniture/AppMeasurementBase;->_doPlugins()V

    .line 1125
    :cond_1
    iget-object v2, v12, Lcom/omniture/AppMeasurementBase;->account:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1127
    iget-boolean v2, v12, Lcom/omniture/AppMeasurementBase;->trackOffline:Z

    invoke-virtual {v12, v2}, Lcom/omniture/AppMeasurementBase;->isSet(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v12, Lcom/omniture/AppMeasurementBase;->timestamp:I

    invoke-virtual {v12, v2}, Lcom/omniture/AppMeasurementBase;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1128
    invoke-virtual {v12}, Lcom/omniture/AppMeasurementBase;->getTime()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v12, Lcom/omniture/AppMeasurementBase;->timestamp:I

    .line 1132
    :cond_2
    invoke-virtual {v12}, Lcom/omniture/AppMeasurementBase;->setDefaults()V

    .line 1135
    invoke-virtual {v12}, Lcom/omniture/AppMeasurementBase;->handleLinkTracking()V

    .line 1138
    invoke-virtual {v12}, Lcom/omniture/AppMeasurementBase;->handleTechnology()V

    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/omniture/AppMeasurementBase;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1144
    invoke-virtual {v12, v9, v11}, Lcom/omniture/AppMeasurementBase;->makeRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1148
    :cond_3
    if-eqz p1, :cond_4

    .line 1149
    invoke-virtual {v12, v15}, Lcom/omniture/AppMeasurementBase;->variableOverridesApply(Ljava/util/Hashtable;)V

    .line 1153
    :cond_4
    const/4 v2, 0x0

    iput v2, v12, Lcom/omniture/AppMeasurementBase;->timestamp:I

    .line 1154
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->referrer:Ljava/lang/String;

    .line 1155
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->pe:Ljava/lang/String;

    .line 1156
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->pev1:Ljava/lang/String;

    .line 1157
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->pev2:Ljava/lang/String;

    .line 1158
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->pev3:Ljava/lang/String;

    .line 1159
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->linkURL:Ljava/lang/String;

    .line 1160
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->linkName:Ljava/lang/String;

    .line 1161
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->linkType:Ljava/lang/String;

    .line 1164
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->lightProfileID:Ljava/lang/String;

    .line 1165
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->retrieveLightProfiles:Ljava/lang/String;

    .line 1166
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/omniture/AppMeasurementBase;->deleteLightProfiles:Ljava/lang/String;

    .line 1168
    return-object v10
.end method

.method public trackLight(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileID"

    .prologue
    const/4 v2, 0x0

    .line 1214
    move-object v0, p0

    .line 1216
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/omniture/AppMeasurementBase;->trackLight(Ljava/lang/String;IILjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trackLight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "profileID"
    .parameter "storeForSeconds"

    .prologue
    .line 1208
    move-object v0, p0

    .line 1210
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/omniture/AppMeasurementBase;->trackLight(Ljava/lang/String;IILjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trackLight(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "profileID"
    .parameter "storeForSeconds"
    .parameter "incrementBy"

    .prologue
    .line 1202
    move-object v0, p0

    .line 1204
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/omniture/AppMeasurementBase;->trackLight(Ljava/lang/String;IILjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trackLight(Ljava/lang/String;IILjava/util/Hashtable;)Ljava/lang/String;
    .locals 2
    .parameter "profileID"
    .parameter "storeForSeconds"
    .parameter "incrementBy"
    .parameter "variableOverrides"

    .prologue
    .line 1187
    move-object v0, p0

    .line 1189
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    iput-object p1, v0, Lcom/omniture/AppMeasurementBase;->lightProfileID:Ljava/lang/String;

    .line 1190
    iput p2, v0, Lcom/omniture/AppMeasurementBase;->lightStoreForSeconds:I

    .line 1191
    iput p3, v0, Lcom/omniture/AppMeasurementBase;->lightIncrementBy:I

    .line 1192
    invoke-virtual {v0, p4}, Lcom/omniture/AppMeasurementBase;->track(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "linkURL"
    .parameter "linkType"
    .parameter "linkName"

    .prologue
    .line 1196
    move-object v0, p0

    .line 1198
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/omniture/AppMeasurementBase;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 2
    .parameter "linkURL"
    .parameter "linkType"
    .parameter "linkName"
    .parameter "variableOverrides"

    .prologue
    .line 1177
    move-object v0, p0

    .line 1179
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    iput-object p1, v0, Lcom/omniture/AppMeasurementBase;->linkURL:Ljava/lang/String;

    .line 1180
    iput-object p2, v0, Lcom/omniture/AppMeasurementBase;->linkType:Ljava/lang/String;

    .line 1181
    iput-object p3, v0, Lcom/omniture/AppMeasurementBase;->linkName:Ljava/lang/String;

    .line 1183
    invoke-virtual {v0, p4}, Lcom/omniture/AppMeasurementBase;->track(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected variableOverridesApply(Ljava/util/Hashtable;)V
    .locals 1
    .parameter "variableOverrides"

    .prologue
    .line 953
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/omniture/AppMeasurementBase;->variableOverridesApply(Ljava/util/Hashtable;Z)V

    .line 954
    return-void
.end method

.method protected variableOverridesApply(Ljava/util/Hashtable;Z)V
    .locals 10
    .parameter "variableOverrides"
    .parameter "restoring"

    .prologue
    const/4 v8, 0x0

    .line 956
    move-object v1, p0

    .line 963
    .local v1, s:Lcom/omniture/AppMeasurementBase;
    const/4 v4, 0x0

    .local v4, varNum:I
    :goto_0
    iget-object v7, v1, Lcom/omniture/AppMeasurementBase;->accountVarList:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_e

    .line 964
    iget-object v7, v1, Lcom/omniture/AppMeasurementBase;->accountVarList:[Ljava/lang/String;

    aget-object v3, v7, v4

    .line 965
    .local v3, varKey:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->isString(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 968
    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 969
    .local v5, varValue:Ljava/lang/Object;
    :goto_1
    if-nez p2, :cond_a

    .line 971
    const-string v7, "contextData"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "retrieveLightData"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_3
    move-object v6, v5

    .line 973
    check-cast v6, Ljava/util/Hashtable;

    .line 974
    .local v6, varValueHashTable:Ljava/util/Hashtable;
    iget-object v7, v1, Lcom/omniture/AppMeasurementBase;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 975
    iget-object v7, v1, Lcom/omniture/AppMeasurementBase;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 976
    .local v0, keys:Ljava/util/Enumeration;
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 977
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 978
    .local v2, subVarKey:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 979
    :cond_5
    iget-object v7, v1, Lcom/omniture/AppMeasurementBase;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v0           #keys:Ljava/util/Enumeration;
    .end local v2           #subVarKey:Ljava/lang/String;
    .end local v5           #varValue:Ljava/lang/Object;
    .end local v6           #varValueHashTable:Ljava/util/Hashtable;
    :cond_6
    move-object v5, v8

    .line 968
    goto :goto_1

    .line 982
    .restart local v5       #varValue:Ljava/lang/Object;
    .restart local v6       #varValueHashTable:Ljava/util/Hashtable;
    :cond_7
    iget-object v7, v1, Lcom/omniture/AppMeasurementBase;->retrieveLightData:Ljava/util/Hashtable;

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 983
    iget-object v7, v1, Lcom/omniture/AppMeasurementBase;->retrieveLightData:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 984
    .restart local v0       #keys:Ljava/util/Enumeration;
    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 985
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 986
    .restart local v2       #subVarKey:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 987
    :cond_9
    iget-object v7, v1, Lcom/omniture/AppMeasurementBase;->retrieveLightData:Ljava/util/Hashtable;

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 993
    .end local v0           #keys:Ljava/util/Enumeration;
    .end local v2           #subVarKey:Ljava/lang/String;
    .end local v6           #varValueHashTable:Ljava/util/Hashtable;
    :cond_a
    const-string v7, "contextData"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 994
    check-cast v5, Ljava/util/Hashtable;

    .end local v5           #varValue:Ljava/lang/Object;
    iput-object v5, v1, Lcom/omniture/AppMeasurementBase;->contextData:Ljava/util/Hashtable;

    .line 963
    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 995
    .restart local v5       #varValue:Ljava/lang/Object;
    :cond_c
    const-string v7, "retrieveLightData"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 996
    check-cast v5, Ljava/util/Hashtable;

    .end local v5           #varValue:Ljava/lang/Object;
    iput-object v5, v1, Lcom/omniture/AppMeasurementBase;->retrieveLightData:Ljava/util/Hashtable;

    goto :goto_4

    .line 998
    .restart local v5       #varValue:Ljava/lang/Object;
    :cond_d
    check-cast v5, Ljava/lang/String;

    .end local v5           #varValue:Ljava/lang/Object;
    invoke-virtual {v1, v3, v5}, Lcom/omniture/AppMeasurementBase;->setAccountVar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1002
    .end local v3           #varKey:Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    :goto_5
    iget-object v7, v1, Lcom/omniture/AppMeasurementBase;->accountConfigList:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_13

    .line 1003
    iget-object v7, v1, Lcom/omniture/AppMeasurementBase;->accountConfigList:[Ljava/lang/String;

    aget-object v3, v7, v4

    .line 1004
    .restart local v3       #varKey:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1006
    :cond_10
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1007
    .restart local v5       #varValue:Ljava/lang/Object;
    :goto_6
    check-cast v5, Ljava/lang/String;

    .end local v5           #varValue:Ljava/lang/Object;
    invoke-virtual {v1, v3, v5}, Lcom/omniture/AppMeasurementBase;->setAccountVar(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_12
    move-object v5, v8

    .line 1006
    goto :goto_6

    .line 1010
    .end local v3           #varKey:Ljava/lang/String;
    :cond_13
    return-void
.end method

.method protected variableOverridesBuild(Ljava/util/Hashtable;)V
    .locals 6
    .parameter "variableOverrides"

    .prologue
    .line 1013
    move-object v0, p0

    .line 1018
    .local v0, s:Lcom/omniture/AppMeasurementBase;
    const/4 v2, 0x0

    .local v2, varNum:I
    :goto_0
    iget-object v4, v0, Lcom/omniture/AppMeasurementBase;->accountVarList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_6

    .line 1019
    iget-object v4, v0, Lcom/omniture/AppMeasurementBase;->accountVarList:[Ljava/lang/String;

    aget-object v1, v4, v2

    .line 1020
    .local v1, varKey:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1021
    :cond_0
    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->getAccountVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1022
    .local v3, varValue:Ljava/lang/String;
    const-string v4, "contextData"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/omniture/AppMeasurementBase;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1023
    iget-object v4, v0, Lcom/omniture/AppMeasurementBase;->contextData:Ljava/util/Hashtable;

    invoke-virtual {p1, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1030
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {p1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    .end local v3           #varValue:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1024
    .restart local v3       #varValue:Ljava/lang/String;
    :cond_4
    const-string v4, "retrieveLightData"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/omniture/AppMeasurementBase;->retrieveLightData:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1025
    iget-object v4, v0, Lcom/omniture/AppMeasurementBase;->retrieveLightData:Ljava/util/Hashtable;

    invoke-virtual {p1, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1026
    :cond_5
    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->getAccountVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1027
    invoke-virtual {p1, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1036
    .end local v1           #varKey:Ljava/lang/String;
    .end local v3           #varValue:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget-object v4, v0, Lcom/omniture/AppMeasurementBase;->accountConfigList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_b

    .line 1037
    iget-object v4, v0, Lcom/omniture/AppMeasurementBase;->accountConfigList:[Ljava/lang/String;

    aget-object v1, v4, v2

    .line 1038
    .restart local v1       #varKey:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1039
    :cond_7
    invoke-virtual {v0, v1}, Lcom/omniture/AppMeasurementBase;->getAccountVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #varValue:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1040
    invoke-virtual {p1, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    :cond_8
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1043
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {p1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    .end local v3           #varValue:Ljava/lang/String;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1049
    .end local v1           #varKey:Ljava/lang/String;
    :cond_b
    return-void
.end method
