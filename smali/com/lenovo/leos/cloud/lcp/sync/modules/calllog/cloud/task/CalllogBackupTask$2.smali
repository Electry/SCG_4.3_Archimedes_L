.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;
.super Ljava/lang/Object;
.source "CalllogBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->buildDiffSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field df:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

.field private final synthetic val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;->df:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    return-object v0
.end method

.method private computeStartAndEnd(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "month"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 202
    new-array v1, v7, [Ljava/lang/String;

    .line 203
    .local v1, "startAndEnd":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 204
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 206
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 207
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 208
    return-object v1
.end method


# virtual methods
.method public varargs onVisit(FLjava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "progress"    # F
    .param p2, "month"    # Ljava/lang/String;
    .param p3, "phoneList"    # [Ljava/lang/String;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 183
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    mul-float v2, v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->notifyProgress(F)V

    .line 184
    invoke-static {p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->calllogDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2$1;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    invoke-direct {v3, p0, p3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;[Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;)V

    .line 195
    const-string v4, "date>=? and date<?"

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;->computeStartAndEnd(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;->traverseCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CalllogBackupTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
