.class public Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;
.super Ljava/lang/Object;
.source "CommonLog.java"


# static fields
.field public static isDebug:Z

.field public static logLevel:I


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x2

    sput v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->logLevel:I

    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "CommonLog"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->tag:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "CommonLog"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->tag:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->tag:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private getFunctionName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 27
    .local v4, "sts":[Ljava/lang/StackTraceElement;
    if-nez v4, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v5

    .line 31
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 32
    .local v3, "st":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 31
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 40
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/Object;

    .prologue
    .line 145
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->debug(Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/Object;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/Object;

    .prologue
    .line 137
    sget v2, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->logLevel:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "ls":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0    # "ls":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 139
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 131
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->error(Ljava/lang/Exception;)V

    .line 134
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/Object;

    .prologue
    .line 125
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->error(Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 9
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 101
    sget v7, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->logLevel:I

    const/4 v8, 0x6

    if-gt v7, v8, :cond_3

    .line 102
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->getFunctionName()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 106
    .local v6, "sts":[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_1

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :goto_0
    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    .line 113
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 114
    .local v5, "st":Ljava/lang/StackTraceElement;
    if-eqz v5, :cond_0

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "st":Ljava/lang/StackTraceElement;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 120
    :cond_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->tag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "sts":[Ljava/lang/StackTraceElement;
    :cond_3
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/Object;

    .prologue
    .line 93
    sget v2, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->logLevel:I

    const/4 v3, 0x6

    if-gt v2, v3, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "ls":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "ls":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 95
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/Object;

    .prologue
    .line 59
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->info(Ljava/lang/Object;)V

    .line 62
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/Object;

    .prologue
    .line 51
    sget v2, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->logLevel:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "ls":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "ls":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 53
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->tag:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public v(Ljava/lang/Object;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/Object;

    .prologue
    .line 73
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->verbose(Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method

.method public verbose(Ljava/lang/Object;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/Object;

    .prologue
    .line 65
    sget v2, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->logLevel:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "ls":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "ls":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 67
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public w(Ljava/lang/Object;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/Object;

    .prologue
    .line 87
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->warn(Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/Object;

    .prologue
    .line 79
    sget v2, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->logLevel:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "ls":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "ls":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 81
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
