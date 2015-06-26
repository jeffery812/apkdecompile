.class public Lbbc/mobile/news/helper/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final DATE_DAY:I = 0x1

.field public static final DATE_DIGIT:I = 0x2

.field public static final DATE_SHORT:I = 0x0

.field private static final HEX_TABLE:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final TAG:Ljava/lang/String; = "StringUtils"

.field public static final TODAY:I = 0x7

.field public static final YESTERDAY:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addDay(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "date"
    .parameter "numberOfDays"

    .prologue
    .line 72
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 78
    :goto_0
    return-object v2

    .line 73
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "T12:00:00+0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, appendedDate:Ljava/lang/String;
    invoke-static {v0}, Lbbc/mobile/news/helper/DateUtils;->isoDateToCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 75
    .local v1, calendar:Ljava/util/Calendar;
    const/4 v4, 0x5

    invoke-virtual {v1, v4, p1}, Ljava/util/Calendar;->add(II)V

    .line 76
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, r:Ljava/lang/String;
    goto :goto_0
.end method

.method public static expires(Ljava/util/Calendar;)J
    .locals 8
    .parameter "calendar"

    .prologue
    .line 83
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 84
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 86
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 87
    .local v0, delta:J
    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 88
    return-wide v0
.end method

.method public static final extractLines(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "content"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v4, r:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/LineNumberReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 299
    .local v3, lnr:Ljava/io/LineNumberReader;
    const-string v1, ""

    .line 301
    .local v1, line:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    .line 303
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v2

    .line 304
    .local v2, lineNumber:I
    if-le v2, p2, :cond_2

    .line 305
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 307
    :cond_2
    if-lt v2, p1, :cond_0

    .line 308
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 311
    .end local v2           #lineNumber:I
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/io/IOException;
    const-string v5, "StringUtils"

    const-string v6, "extractLines() failed !"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v0, v7}, Lbbc/mobile/news/helper/BBCLog;->ee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 313
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static final isBlank(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 254
    if-nez p0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, objs:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/lang/Object;>;"
    :cond_0
    const-string v2, ""

    .line 171
    :goto_0
    return-object v2

    .line 168
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/lang/Object;>;"
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, r:Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static final join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "objs"
    .parameter "delimiter"

    .prologue
    const/4 v4, 0x0

    .line 149
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 156
    :goto_0
    return-object v3

    .line 150
    :cond_0
    array-length v1, p0

    .line 151
    .local v1, length:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    aget-object v3, p0, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 152
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, p0, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, r:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static last7days()[[Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x5

    .line 93
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "E"

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    .local v4, shortDayFormat:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 95
    .local v3, shortDateFormat:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 96
    .local v0, date:Ljava/util/Calendar;
    const/4 v6, 0x3

    filled-new-array {v12, v6}, [I

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    .line 98
    .local v1, dates:[[Ljava/lang/String;
    const/4 v6, -0x8

    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->add(II)V

    .line 99
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v12, :cond_0

    .line 107
    return-object v1

    .line 100
    :cond_0
    invoke-virtual {v0, v9, v11}, Ljava/util/Calendar;->add(II)V

    .line 101
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 102
    .local v5, t:Ljava/util/Date;
    aget-object v6, v1, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 103
    aget-object v6, v1, v2

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 104
    aget-object v6, v1, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 105
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_1

    aget-object v6, v1, v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v1, v2

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 99
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final orientationToString(I)Ljava/lang/String;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 320
    packed-switch p0, :pswitch_data_0

    .line 324
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 322
    :pswitch_0
    const-string v0, "landscape"

    goto :goto_0

    .line 323
    :pswitch_1
    const-string v0, "portrait"

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static programmeDuration(I)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    .line 114
    div-int/lit16 v0, p0, 0xe10

    .line 115
    .local v0, h:I
    mul-int/lit16 v3, v0, 0xe10

    sub-int/2addr p0, v3

    .line 116
    div-int/lit8 v1, p0, 0x3c

    .line 118
    .local v1, m:I
    const-string v2, ""

    .line 120
    .local v2, temp:Ljava/lang/String;
    if-lez v0, :cond_1

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " hour"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    if-le v0, v5, :cond_0

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    :cond_0
    if-lez v1, :cond_1

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    :cond_1
    if-lez v1, :cond_2

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    :cond_2
    if-le v1, v5, :cond_3

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    :cond_3
    return-object v2
.end method

.method public static final rightPad(Ljava/lang/Object;IC)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "padding"
    .parameter "fill"

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, r:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, p1, :cond_1

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 271
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static shortDateToLong(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "date"

    .prologue
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "T12:00:00+0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, appendedDate:Ljava/lang/String;
    invoke-static {v0}, Lbbc/mobile/news/helper/DateUtils;->isoDateToCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 45
    .local v1, calendar:Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEEE d MMMM"

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    .local v3, scheduleDate:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, longDate:Ljava/lang/String;
    return-object v2
.end method

.method public static shortDateToMedium(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "date"

    .prologue
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "T12:00:00+0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, appendedDate:Ljava/lang/String;
    invoke-static {v0}, Lbbc/mobile/news/helper/DateUtils;->isoDateToCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 57
    .local v1, calendar:Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEEE d"

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 59
    .local v3, scheduleDate:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, mediumDate:Ljava/lang/String;
    return-object v2
.end method

.method public static final toHexa([B)Ljava/lang/String;
    .locals 7
    .parameter "bytes"

    .prologue
    const/4 v2, 0x0

    .line 182
    if-nez p0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v2

    .line 183
    :cond_1
    array-length v3, p0

    if-eqz v3, :cond_0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    .local v1, r:Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 186
    :cond_2
    aget-byte v0, p0, v2

    .line 187
    .local v0, b:B
    const-string v4, "0123456789ABCDEF"

    and-int/lit16 v5, v0, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v0, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static final toMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 200
    if-nez p0, :cond_0

    .line 209
    :goto_0
    return-object v3

    .line 203
    :cond_0
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 204
    .local v1, digest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 205
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 206
    .local v0, bytes:[B
    invoke-static {v0}, Lbbc/mobile/news/helper/StringUtils;->toHexa([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 207
    .end local v0           #bytes:[B
    .end local v1           #digest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 208
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const-string v4, "StringUtils"

    const-string v5, "toMD5(): MD5 not available"

    invoke-static {v4, v5, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 6
    .parameter "uri"

    .prologue
    .line 237
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-object v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v2, "StringUtils"

    const-string v3, "toURI(): invalid url %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Lbbc/mobile/news/helper/BBCLog;->ee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final toURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .parameter "url"

    .prologue
    .line 220
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-object v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v2, "StringUtils"

    const-string v3, "toURL(): invalid url %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v0, v4}, Lbbc/mobile/news/helper/BBCLog;->ee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 224
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final truncate(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "max"

    .prologue
    .line 283
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 286
    :cond_0
    :goto_0
    return-object v0

    .line 284
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, r:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
