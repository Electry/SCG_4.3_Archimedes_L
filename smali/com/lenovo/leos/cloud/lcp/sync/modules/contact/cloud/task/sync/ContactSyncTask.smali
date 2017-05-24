.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source "ContactSyncTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;


# static fields
.field public static final CONTACT_LOCAL_MERGE:Ljava/lang/String; = "CONTACT_LOCAL_MERGE"

.field public static final CONTACT_RULE_AUTO:I = 0x0

.field public static final CONTACT_RULE_CLOUD:I = 0x2

.field public static final CONTACT_RULE_LOCAL:I = 0x1

.field public static final ONGOING_BEGIN_SYNC:I = 0x2

.field public static final ONGOING_C_SYNC:I = 0xa

.field public static final ONGOING_C_SYNC_CHECKSUM:I = 0x3

.field public static final ONGOING_GROUP_SYNC:I = 0xb

.field public static final ONGOING_G_SYNC_CHECK_LOCAL:I = 0x4

.field public static final ONGOING_G_SYNC_CHECK_SERVER:I = 0x5

.field public static final ONGOING_P_SYNC:I = 0xc

.field public static final ONGOING_P_SYNC_CHECK_LOCAL:I = 0x6

.field public static final ONGOING_P_SYNC_CHECK_SERVER:I = 0x7

.field public static final ONGOING_SYNC_ENCRPYT:I = 0x8

.field public static final ONGOING_SYNC_GZIP:I = 0x9

.field public static final PROBLEM_SYNC_CONTACT_PHOTO:Ljava/lang/String; = "problemSyncContactPhoto"

.field public static final PROBLEM_SYNC_CONTACT_SAVE_STATUS_BEGIN:Ljava/lang/String; = "problemSyncContactSaveStatusBegin"

.field public static final PROBLEM_SYNC_CONTACT_SAVE_STATUS_END:Ljava/lang/String; = "problemSyncContactSaveStatusEnd"

.field public static final PROBLEM_SYNC_RULE:Ljava/lang/String; = "problemSyncRule"

.field public static final PROBLEM_SYNC_RULE_CLOUD_EMPTY:Ljava/lang/String; = "problemSyncEuleCloudEmpty"

.field public static final PROBLEM_SYNC_RULE_LOCAL_EMPTY:Ljava/lang/String; = "problemSyncEuleLocalEmpty"


# instance fields
.field private bNeedToBackuped:Z

.field private checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

.field private cloudContactCount:I

.field private contactBundle:Landroid/os/Bundle;

.field private contactChecksumBundle:Landroid/os/Bundle;

.field private contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

.field private contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

.field contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

.field private cost:J

.field private doingNetWork:Z

.field private groupBundle:Landroid/os/Bundle;

.field private groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

.field private groupCid2TitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;

.field groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

.field private groupTitle2CidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private localContactCount:I

.field private numberBundle:Landroid/os/Bundle;

.field private photoBundle:Landroid/os/Bundle;

.field private photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

.field photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

.field private portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

.field private progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

.field private start:J

.field private thinkTime:J

.field virtualNetWork:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupCid2TitleMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupTitle2CidMap:Ljava/util/Map;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->bNeedToBackuped:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doingNetWork:Z

    .line 266
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->virtualNetWork:Ljava/lang/Runnable;

    .line 1032
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    .line 115
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->newRawContactDao(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    .line 116
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;

    .line 117
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$MockProgressListener;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    .line 118
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doingNetWork:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupCid2TitleMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupTitle2CidMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)V
    .locals 0

    .prologue
    .line 867
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->saveStatus()V

    return-void
.end method

.method private addOther2Bundle(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "syncBundle"    # Landroid/os/Bundle;
    .param p2, "otherBundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, 0x0

    .line 1183
    const-string/jumbo v8, "real_flow"

    invoke-virtual {p1, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1184
    .local v2, "beginRealFlow":J
    const-string v8, "gzip_flow"

    invoke-virtual {p1, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1185
    .local v0, "beginGzipFlow":J
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1186
    const-string/jumbo v8, "real_flow"

    invoke-virtual {p1, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1187
    .local v6, "endRealFlow":J
    const-string v8, "gzip_flow"

    invoke-virtual {p1, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1188
    .local v4, "endGzipFlow":J
    add-long/2addr v6, v2

    .line 1189
    add-long/2addr v4, v0

    .line 1190
    const-string/jumbo v8, "real_flow"

    invoke-virtual {p1, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1191
    const-string v8, "gzip_flow"

    invoke-virtual {p1, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1192
    return-void
.end method

.method private addPortraitSyncCache(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 4
    .param p1, "clientAdler"    # Ljava/lang/String;
    .param p2, "serverAdler"    # Ljava/lang/String;
    .param p3, "cid"    # I
    .param p4, "sid"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getCid2LenMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getCid2ServerLenMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getCid2fieldIdMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->cid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getLen2CidsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1077
    .local v0, "cids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 1078
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "cids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1080
    .restart local v0    # "cids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1081
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;->getLen2CidsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    return-void
.end method

.method private asyncSaveStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 847
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string/jumbo v2, "problemSyncContactSaveStatusBegin"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    const-string v2, "CONTACT_SYNC_TASK_TYPE"

    invoke-static {v1, v2, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 851
    .local v0, "taskType":I
    if-eq v0, v4, :cond_1

    .line 852
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->saveStatusInBackground()V

    .line 856
    :goto_0
    return-void

    .line 854
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->saveStatus()V

    goto :goto_0
.end method

.method private buildGroupCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .locals 4

    .prologue
    .line 692
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;-><init>()V

    .line 693
    .local v0, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->checkInitContactGroupReq()V

    .line 694
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->readLastServerVersion(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->setVersion(Ljava/lang/Long;)V

    .line 696
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->findAllContactGroupReq()Ljava/util/Map;

    move-result-object v1

    .line 697
    .local v1, "groupSid2TitlesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addGroupByAllGroupsMap(Ljava/util/Map;)V

    .line 698
    return-object v0
.end method

.method private buildPortraitCheckSum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;Ljava/util/Map;)V
    .locals 12
    .param p1, "checksumRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;
    .param p2, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1035
    .local p3, "rawContactMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    iget v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1037
    .local v4, "sid":Ljava/lang/String;
    iget v0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    .line 1038
    .local v9, "rawcontact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget-object v6, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    .line 1039
    .local v6, "b":[B
    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    if-eqz v9, :cond_0

    .line 1040
    iget v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    .line 1041
    .local v3, "cid":I
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->computeAdler32([B)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, "clientAdler":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1043
    .local v2, "serverAdler":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    iget v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactPortrait(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;

    move-result-object v8

    .line 1044
    .local v8, "portrait":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    if-eqz v8, :cond_1

    iget-object v0, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;->clientAdler:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    iget-object v2, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;->serverAdler:Ljava/lang/String;

    .line 1055
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1056
    iget v0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->addClientPortrait(Ljava/lang/Integer;Ljava/lang/String;)V

    :goto_1
    move-object v0, p0

    move-object v5, p2

    .line 1061
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->addPortraitSyncCache(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V

    .line 1065
    .end local v1    # "clientAdler":Ljava/lang/String;
    .end local v2    # "serverAdler":Ljava/lang/String;
    .end local v3    # "cid":I
    .end local v8    # "portrait":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    :cond_0
    const/4 v6, 0x0

    .line 1066
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    .line 1067
    return-void

    .line 1047
    .restart local v1    # "clientAdler":Ljava/lang/String;
    .restart local v2    # "serverAdler":Ljava/lang/String;
    .restart local v3    # "cid":I
    .restart local v8    # "portrait":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    :cond_1
    const-string v0, "DEBUG_TAG"

    const-string v5, "invoke ContactPhotoProxy.getContactPhotoLength"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    iget v5, v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->contactId:I

    int-to-long v10, v5

    invoke-static {v0, v10, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->openContactPhotoInputStream(Landroid/content/Context;J)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->computeAdler32(Ljava/io/InputStream;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1051
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;->build(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;

    move-result-object v7

    .line 1052
    .local v7, "cportrait":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v7, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->saveContactPortrait(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;Ljava/lang/String;)V

    goto :goto_0

    .line 1058
    .end local v7    # "cportrait":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    :cond_2
    invoke-virtual {p1, v4, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->addPortrait(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private buildPortraitCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 971
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;

    invoke-direct {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;-><init>()V

    .line 972
    .local v6, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->checkInitPortraitReq()V

    .line 973
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->checkInitContactGroupReq()V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->readLastServerVersion(Landroid/content/Context;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->setVersion(Ljava/lang/Long;)V

    .line 977
    const-string/jumbo v21, "mimetype = ? and data15 is not null "

    .line 980
    .local v21, "where":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "vnd.android.cursor.item/photo"

    aput-object v24, v22, v23

    .line 982
    .local v22, "whereArg":[Ljava/lang/String;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 983
    .local v17, "rawContactMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v16, "portraitDataList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 986
    .local v9, "portraitContactIdBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 988
    .local v18, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-object/from16 v23, v0

    new-instance v24, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v9, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$6;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 996
    const/16 v25, 0x0

    .line 988
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 998
    .local v12, "endQueryPortrait":J
    const-string v23, "DEBUG_TAG"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "query contact protrait :"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v26, v12, v18

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-lez v23, :cond_0

    .line 1002
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-object/from16 v23, v0

    new-instance v24, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$7;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;Ljava/util/Map;)V

    .line 1013
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "_id in ("

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 1005
    invoke-interface/range {v23 .. v26}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1016
    .local v14, "endQueryRawContact":J
    const-string v23, "DEBUG_TAG"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "query endQueryRawContact :"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v26, v14, v12

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v7, 0x0

    .local v7, "cur":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    .line 1020
    .local v20, "total":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_1

    .line 1025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1026
    .local v10, "endBuild":J
    const-string v23, "DEBUG_TAG"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "query endBuild :"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v26, v10, v14

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .end local v7    # "cur":I
    .end local v10    # "endBuild":J
    .end local v14    # "endQueryRawContact":J
    .end local v20    # "total":I
    :cond_0
    return-object v6

    .line 1020
    .restart local v7    # "cur":I
    .restart local v14    # "endQueryRawContact":J
    .restart local v20    # "total":I
    :cond_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .line 1021
    .local v8, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v8, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->buildPortraitCheckSum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;Ljava/util/Map;)V

    .line 1022
    int-to-float v0, v7

    move/from16 v24, v0

    const/high16 v25, 0x3f800000    # 1.0f

    add-float v24, v24, v25

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    goto :goto_0
.end method

.method private checkAndShowMockMessage(Z)Z
    .locals 2
    .param p1, "isAutoSyncContactPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "isShowMockEncrpytGzip":Z
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isContactChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 238
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isGroupChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const/4 v0, 0x1

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 242
    if-eqz p1, :cond_2

    .line 243
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isProtraitChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    const/4 v0, 0x1

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 248
    if-eqz v0, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mockEncrpyt()V

    .line 250
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mockGzip()V

    .line 253
    :cond_3
    return v0
.end method

.method private checkSyncRule(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z
    .locals 1
    .param p1, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method private checksumFirstBackupCloudNoData(Z)V
    .locals 12
    .param p1, "isAutoSyncContactPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 350
    .local v6, "startchecksum":J
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 351
    .local v4, "respRoot":Lorg/json/JSONObject;
    const-string/jumbo v5, "result"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 353
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->setSyncType(I)V

    .line 355
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .line 356
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;-><init>()V

    .line 357
    .local v0, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-virtual {v5, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setChecksumRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;)V

    .line 358
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v5, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setChecksumResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 361
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 365
    if-eqz p1, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doPortraitChecksum()V

    .line 367
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-direct {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isChecksumError(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    const/4 v5, 0x2

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    .line 369
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v0    # "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .end local v4    # "respRoot":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v5, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 376
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .restart local v4    # "respRoot":Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 377
    .local v2, "endcontact":J
    const-string v5, "DEBUG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "checksumFirstBackupCloudNoData checksum:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v2, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method

.method private checksumWhenCloudChange(Z)V
    .locals 1
    .param p1, "isAutoSyncContactPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doContactChecksum()V

    .line 383
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isChecksumError(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    .line 385
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v0

    .line 388
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPhotoChecksum(Z)V

    .line 389
    return-void
.end method

.method private checksumWhenCloudNoChange(Z)V
    .locals 12
    .param p1, "isAutoSyncContactPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->startVirtualChecksumTask()V

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 299
    .local v6, "startchecksum":J
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->queryLocalChange()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    move-result-object v1

    .line 302
    .local v1, "localChange":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumMocker;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumMocker;-><init>()V

    invoke-virtual {v5, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumMocker;->checksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 303
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .line 310
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;-><init>()V

    .line 311
    .local v0, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    iget-object v5, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->delList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 314
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-virtual {v5, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setChecksumRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;)V

    .line 315
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v5, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setChecksumResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 318
    .local v2, "endcontact":J
    const-string v5, "DEBUG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "mock contact checksum:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v2, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPhotoChecksum(Z)V

    .line 321
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->stopVirtualChecksumTask()V

    .line 322
    const-string v5, "DEBUG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "mock group photo checksum:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 311
    .end local v2    # "endcontact":J
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 312
    .local v4, "sid":Ljava/lang/Long;
    invoke-virtual {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addContactLocalDeleteSid(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private clearContactPrivateData()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->clearContactSid(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 123
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->clearRawContactVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private createContactPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;
    .locals 4
    .param p1, "checksumPerformer"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .prologue
    .line 771
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 772
    const-string v2, "CONTACT_SYNC_RULE"

    const/4 v3, 0x0

    .line 771
    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 773
    .local v0, "syncRule":I
    packed-switch v0, :pswitch_data_0

    .line 783
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 784
    invoke-direct {v1, v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)V

    .line 783
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    .line 787
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    return-object v1

    .line 775
    :pswitch_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncLocalPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 776
    invoke-direct {v1, v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncLocalPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)V

    .line 775
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    goto :goto_0

    .line 779
    :pswitch_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncCloudPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 780
    invoke-direct {v1, v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncCloudPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)V

    .line 779
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    goto :goto_0

    .line 773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createContactPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;
    .locals 4
    .param p1, "photoCidLengthCache2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;
    .param p2, "portraitChecksumResponse2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    .prologue
    .line 802
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 803
    const-string v2, "CONTACT_SYNC_RULE"

    const/4 v3, 0x0

    .line 802
    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 805
    .local v0, "syncRule":I
    packed-switch v0, :pswitch_data_0

    .line 815
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 816
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 815
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    .line 819
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    return-object v1

    .line 807
    :pswitch_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncLocalPerformerForDistinctNfs;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 808
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncLocalPerformerForDistinctNfs;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 807
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    goto :goto_0

    .line 811
    :pswitch_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCloudPerformerForDistinctNfs;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 812
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCloudPerformerForDistinctNfs;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 811
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    goto :goto_0

    .line 805
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createGroupPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;
    .locals 4
    .param p1, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    .param p2, "groupChecksumRespnse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    .line 666
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 667
    const-string v2, "CONTACT_SYNC_RULE"

    const/4 v3, 0x0

    .line 666
    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 669
    .local v0, "syncRule":I
    packed-switch v0, :pswitch_data_0

    .line 679
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 680
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 679
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    .line 683
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    return-object v1

    .line 671
    :pswitch_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncLocalPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 672
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncLocalPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 671
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    goto :goto_0

    .line 675
    :pswitch_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncCloudPerformer;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 676
    invoke-direct {v1, v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncCloudPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 675
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doContactChecksum()V
    .locals 4

    .prologue
    .line 608
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .line 609
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    const-string v2, "CONTACT_SYNC_FAST_CHECK_LOCAL_ALLOWED"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setAsyncComputeChecksum(Z)V

    .line 610
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->start()V

    .line 611
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumBundle:Landroid/os/Bundle;

    .line 613
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .line 614
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->getChecksumResponse()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    move-result-object v0

    .line 613
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 615
    return-void
.end method

.method private doGroupChecksum()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 625
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 627
    .local v4, "groupstart":J
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->buildGroupCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    move-result-object v6

    .line 628
    .local v6, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 629
    .local v0, "buildGroupEnd":J
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "buildGroupEnd:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v0, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string/jumbo v8, "v5/checksum.action"

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v7

    .line 633
    .local v7, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 634
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->toBytes()[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, "json":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {v8, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "group ChecksumResponse:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void

    .line 637
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Lorg/json/JSONException;
    const/4 v8, 0x2

    iput v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    .line 639
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method private doPortraitChecksum()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 946
    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 949
    .local v4, "groupstart":J
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->buildPortraitCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;

    move-result-object v6

    .line 951
    .local v6, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 952
    .local v0, "buildPortraitEnd":J
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "buildPortraitEnd:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v0, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string/jumbo v8, "v5/photo/checksum.action"

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v7

    .line 957
    .local v7, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    const/4 v8, 0x7

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 958
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumRequest;->toBytes()[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v3

    .line 961
    .local v3, "json":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-direct {v8, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "portrait ChecksumResponse:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void

    .line 962
    :catch_0
    move-exception v2

    .line 963
    .local v2, "e":Lorg/json/JSONException;
    const/4 v8, 0x2

    iput v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    .line 964
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method private doSnapshotRawContact()V
    .locals 6

    .prologue
    .line 893
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 894
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 893
    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->clearRawContactVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 896
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getClonedContactData(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->keyMap()Ljava/util/Map;

    move-result-object v0

    .line 897
    .local v0, "contactMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 899
    .local v1, "tempCIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$5;

    invoke-direct {v3, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$5;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;Ljava/util/Set;)V

    .line 911
    const-string v4, "deleted = 0"

    const/4 v5, 0x0

    .line 899
    invoke-interface {v2, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method private findAllContactGroupReq()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 710
    const-string/jumbo v1, "mimetype = ? and data1 is not null "

    .line 713
    .local v1, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vnd.android.cursor.item/group_membership"

    aput-object v4, v2, v3

    .line 715
    .local v2, "whereArg":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->loadAllGroup()V

    .line 716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 717
    .local v0, "allContactGroupReq":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;

    invoke-direct {v4, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;Ljava/util/Map;)V

    .line 750
    const/4 v5, 0x0

    .line 717
    invoke-interface {v3, v4, v1, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-object v0
.end method

.method private groupPhotoChecksum(Z)V
    .locals 2
    .param p1, "isAutoSyncContactPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 393
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doGroupChecksum()V

    .line 394
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isChecksumError(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    .line 396
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v0

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 399
    if-eqz p1, :cond_1

    .line 400
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doPortraitChecksum()V

    .line 401
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->isChecksumError(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    .line 403
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v0

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 407
    return-void
.end method

.method private isChecksumError(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;)Z
    .locals 1
    .param p1, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;

    .prologue
    .line 508
    if-eqz p1, :cond_0

    .line 509
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->getResult()I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isContactChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z
    .locals 9
    .param p1, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 458
    if-nez p1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v6

    .line 461
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCAdd()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 462
    .local v0, "cadd":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDel()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 463
    .local v1, "cdel":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDiff()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .line 464
    .local v2, "cdiff":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSAdd()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 465
    .local v3, "sadd":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDel()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 466
    .local v4, "sdel":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDiff()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 468
    .local v5, "sdiff":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getSyncType()I

    move-result v8

    if-eq v8, v7, :cond_2

    .line 469
    add-int v8, v0, v1

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    add-int/2addr v8, v4

    add-int/2addr v8, v5

    if-lez v8, :cond_0

    :cond_2
    move v6, v7

    .line 470
    goto :goto_0
.end method

.method private isGroupChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z
    .locals 5
    .param p1, "groupChecksumRespnse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    const/4 v3, 0x0

    .line 443
    if-nez p1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v3

    .line 446
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getGroupCDiff()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 447
    .local v0, "cdiff":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getGroupSAdd()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 448
    .local v1, "sadd":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getGroupSDiff()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 450
    .local v2, "sdiff":I
    add-int v4, v0, v1

    add-int/2addr v4, v2

    if-lez v4, :cond_0

    .line 451
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isProtraitChecksumSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)Z
    .locals 5
    .param p1, "portraitChecksumResponse2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    .prologue
    const/4 v3, 0x0

    .line 428
    if-nez p1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v3

    .line 431
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitCDiff()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 432
    .local v0, "cdiff":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSAdd()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 433
    .local v1, "sadd":I
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDiff()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 435
    .local v2, "sdiff":I
    add-int v4, v0, v1

    add-int/2addr v4, v2

    if-lez v4, :cond_0

    .line 436
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private loadAllGroup()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$3;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$3;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->traverseAllGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V

    .line 767
    return-void
.end method

.method private mockEncrpyt()V
    .locals 1

    .prologue
    .line 1218
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 1224
    return-void
.end method

.method private mockGzip()V
    .locals 1

    .prologue
    .line 1227
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 1233
    return-void
.end method

.method private needContactPhotoSync()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 416
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-nez v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v1

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string/jumbo v3, "problemSyncContactPhoto"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 420
    .local v0, "resolveObj":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 421
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private notifyProgressMockerEstimate()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->setContactChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 209
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->setPortraitChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 210
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->estimateProgress()V

    .line 211
    return-void
.end method

.method private queryLocalChange()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    move-result-object v0

    .line 327
    .local v0, "metaManager":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/ContactMetadataManager;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/ContactMetadataManager;->getLastestLocalChange(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    move-result-object v1

    return-object v1
.end method

.method private queryLocalCloudContactsNumber()V
    .locals 4

    .prologue
    .line 824
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->bNeedToBackuped:Z

    if-eqz v1, :cond_0

    .line 828
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doFetchServerContactCount()I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 834
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    .line 836
    :cond_0
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    if-eq v1, v2, :cond_1

    .line 837
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    const-string v2, "CONTACT_SYNC_FAST_CHECK_LOCAL_ALLOWED"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 841
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->numberBundle:Landroid/os/Bundle;

    .line 842
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->numberBundle:Landroid/os/Bundle;

    const-string v2, "cloud_number"

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->numberBundle:Landroid/os/Bundle;

    const-string v2, "local_number"

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 831
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 832
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->printStackTrace()V

    goto :goto_0

    .line 839
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    const-string v2, "CONTACT_SYNC_FAST_CHECK_LOCAL_ALLOWED"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private saveLastestSyncInfo()V
    .locals 6

    .prologue
    .line 915
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    const-string v3, "CONTACT_LAST_SYNC_USER"

    .line 916
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 915
    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doFetchServerVersion()Ljava/lang/Long;

    move-result-object v1

    .line 921
    .local v1, "version":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 922
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->writeLastServerVersion(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 929
    .end local v1    # "version":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 926
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 927
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;->printStackTrace()V

    goto :goto_0
.end method

.method private saveStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 868
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    if-nez v0, :cond_0

    .line 869
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doSnapshotRawContact()V

    .line 872
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    const-string v1, "CONTACT_SYNC_RULE"

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 874
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    const-string v1, "CONTACT_SYNC_NOTIFY_USER_CHOOSE"

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 876
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->saveLastestSyncInfo()V

    .line 878
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->saveContactChecksumValue()V

    .line 881
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->queryLocalChangeByVersion(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    .line 882
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->persist(Landroid/content/Context;)V

    .line 883
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string/jumbo v1, "problemSyncContactSaveStatusEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 886
    :cond_1
    return-void
.end method

.method private saveStatusInBackground()V
    .locals 2

    .prologue
    .line 859
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$4;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$4;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 864
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 865
    return-void
.end method

.method private startVirtualChecksumTask()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 259
    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doingNetWork:Z

    .line 260
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 261
    .local v0, "exec":Ljava/util/concurrent/ExecutorService;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->virtualNetWork:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method private stopVirtualChecksumTask()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doingNetWork:Z

    .line 265
    return-void
.end method

.method private syncContact()V
    .locals 1

    .prologue
    .line 647
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 648
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->createContactPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    .line 649
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->start()V

    .line 651
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactBundle:Landroid/os/Bundle;

    .line 652
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->getResult()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    .line 653
    return-void
.end method

.method private syncGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V
    .locals 1
    .param p1, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    .param p2, "groupChecksumRespnse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    .line 657
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 658
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->createGroupPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    .line 659
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->start()V

    .line 660
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    .line 661
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->getResult()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    .line 662
    return-void
.end method

.method private syncPhoto(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V
    .locals 1
    .param p1, "photoCidLengthCache2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;
    .param p2, "portraitChecksumResponse2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 794
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->createContactPerformer(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    .line 795
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->start()V

    .line 796
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    .line 797
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->getResult()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    .line 798
    return-void
.end method

.method private validateContactRule()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 533
    .local v6, "validateStart":J
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 534
    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 535
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doFetchServerContactCount()I

    move-result v5

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 537
    .local v2, "fetchcount":J
    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 538
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result v5

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 540
    .local v0, "fetchLocalCount":J
    const-string v5, "DEBUG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fetchLocalCount:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v0, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const v5, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 543
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    if-nez v5, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->clearContactPrivateData()V

    .line 545
    const/4 v5, 0x0

    .line 586
    :goto_0
    return v5

    .line 569
    :cond_0
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    if-nez v5, :cond_2

    .line 571
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->clearContactPrivateData()V

    .line 573
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->resetLastestLocalChange()V

    .line 576
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    if-nez v5, :cond_3

    .line 577
    const/4 v4, 0x2

    .line 581
    .local v4, "syncRule":I
    :goto_1
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    const-string v8, "CONTACT_SYNC_RULE"

    invoke-static {v5, v8, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 584
    .end local v4    # "syncRule":I
    :cond_2
    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 585
    const-string v5, "DEBUG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "validate time:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v5, 0x1

    goto :goto_0

    .line 579
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "syncRule":I
    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->cancel()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->cancel()V

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->cancel()V

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    if-eqz v0, :cond_3

    .line 601
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoPerformer:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->cancel()V

    .line 603
    :cond_3
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancel()V

    .line 604
    return-void
.end method

.method protected doFetchServerContactCount()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 1092
    const-string/jumbo v8, "v4/count.action"

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v5

    .line 1094
    .local v5, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1095
    .local v6, "startcount":J
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v1

    .line 1098
    .local v1, "respString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    .local v4, "response":Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1104
    .local v2, "fetchcount":J
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "fetchCount:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v8, "count"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    return v8

    .line 1099
    .end local v2    # "fetchcount":J
    .end local v4    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Lorg/json/JSONException;
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method protected doFetchServerVersion()Ljava/lang/Long;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 1117
    const-string/jumbo v8, "v4/version.action"

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v7

    .line 1119
    .local v7, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1120
    .local v0, "beforeFetchVersion":J
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v3

    .line 1123
    .local v3, "respString":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    .local v6, "response":Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1129
    .local v4, "endFetchVersion":J
    const-string v8, "DEBUG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "endFetchVersion:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v4, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string/jumbo v8, "version"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    return-object v8

    .line 1124
    .end local v4    # "endFetchVersion":J
    .end local v6    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1125
    .local v2, "e":Lorg/json/JSONException;
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1139
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 1140
    .local v0, "syncBundle":Landroid/os/Bundle;
    const-wide/16 v2, 0x0

    .line 1141
    .local v2, "totalFlow":J
    const-wide/16 v4, 0x0

    .line 1142
    .local v4, "totalZipFlow":J
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->addOther2Bundle(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1144
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupBundle:Landroid/os/Bundle;

    const-string/jumbo v6, "real_flow"

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 1145
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupBundle:Landroid/os/Bundle;

    const-string v6, "gzip_flow"

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 1148
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 1149
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->addOther2Bundle(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1150
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactBundle:Landroid/os/Bundle;

    const-string/jumbo v6, "real_flow"

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 1151
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactBundle:Landroid/os/Bundle;

    const-string v6, "gzip_flow"

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 1154
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 1155
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->addOther2Bundle(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1156
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    const-string/jumbo v6, "real_flow"

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 1157
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoBundle:Landroid/os/Bundle;

    const-string v6, "gzip_flow"

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 1160
    :cond_2
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1161
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumBundle:Landroid/os/Bundle;

    const-string/jumbo v6, "real_flow"

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 1162
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumBundle:Landroid/os/Bundle;

    const-string v6, "gzip_flow"

    .line 1163
    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 1166
    :cond_3
    const-string/jumbo v1, "real_flow"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1167
    const-string v1, "gzip_flow"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1169
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->numberBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 1170
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->numberBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->addOther2Bundle(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1173
    :cond_4
    const-string/jumbo v1, "progressstate"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getProgressStep()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1175
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    if-eqz v1, :cond_5

    .line 1176
    const-string/jumbo v1, "result"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getResult()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1179
    :cond_5
    return-object v0
.end method

.method protected getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .locals 1
    .param p1, "buzzURL"    # Ljava/lang/String;

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;->getURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    return-object v0
.end method

.method protected notifyFinish()V
    .locals 6

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->queryLocalCloudContactsNumber()V

    .line 216
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->asyncSaveStatus()V

    .line 217
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->endProgress()V

    .line 218
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 219
    const-string v0, "DEBUG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++++++++++++++++++TotalTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, "DEBUG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++++++++++++++++++SyncTime = TotalTime - ThinkTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->start:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->thinkTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 222
    return-void
.end method

.method public notifyStepProgress(F)V
    .locals 6
    .param p1, "progress"    # F

    .prologue
    const/high16 v5, 0x420c0000    # 35.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1250
    const/4 v0, 0x0

    .line 1251
    .local v0, "currentTaskProgress":I
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getProgressStep()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1292
    :goto_0
    if-lez v0, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->onTaskUpdateProgress(I)V

    .line 1295
    :cond_0
    return-void

    .line 1253
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyProgress(F)V

    goto :goto_0

    .line 1256
    :sswitch_1
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1257
    goto :goto_0

    .line 1259
    :sswitch_2
    mul-float v1, v4, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x5

    .line 1260
    goto :goto_0

    .line 1262
    :sswitch_3
    mul-float v1, v3, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0xa

    .line 1263
    goto :goto_0

    .line 1265
    :sswitch_4
    mul-float v1, v3, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0xc

    .line 1266
    goto :goto_0

    .line 1268
    :sswitch_5
    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0xe

    .line 1269
    goto :goto_0

    .line 1271
    :sswitch_6
    mul-float v1, v3, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x14

    .line 1272
    goto :goto_0

    .line 1274
    :sswitch_7
    mul-float v1, v2, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x16

    .line 1275
    goto :goto_0

    .line 1277
    :sswitch_8
    mul-float v1, v2, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x17

    .line 1278
    goto :goto_0

    .line 1280
    :sswitch_9
    mul-float v1, v5, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x18

    .line 1281
    goto :goto_0

    .line 1283
    :sswitch_a
    mul-float v1, v4, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x3c

    .line 1284
    goto :goto_0

    .line 1286
    :sswitch_b
    mul-float v1, v5, p1

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x41

    .line 1287
    goto :goto_0

    .line 1289
    :sswitch_c
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyProgress(F)V

    goto :goto_0

    .line 1251
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0x7fffffff -> :sswitch_c
    .end sparse-switch
.end method

.method public onMockProgress(II)V
    .locals 1
    .param p1, "curProgress"    # I
    .param p2, "totalProgress"    # I

    .prologue
    .line 1311
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyProgress(F)V

    .line 1312
    return-void
.end method

.method public onStepProgress(IILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "cur"    # I
    .param p2, "total"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 1196
    if-nez p3, :cond_1

    move v0, v1

    .line 1198
    .local v0, "step":I
    :goto_0
    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->curProgressStep:I

    if-eq v1, v0, :cond_0

    .line 1199
    const-string/jumbo v1, "progressstate"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 1202
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 1204
    const/4 v1, 0x1

    return v1

    .line 1197
    .end local v0    # "step":I
    :cond_1
    const-string/jumbo v2, "progressstate"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 7
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "cost"    # J
    .param p7, "operateType"    # Ljava/lang/String;
    .param p8, "changeNum"    # I

    .prologue
    .line 1300
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 1301
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string/jumbo v1, "userName"

    invoke-virtual {v5, v0, v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1302
    const/4 v0, 0x2

    const-string v1, "contactNum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1303
    const/4 v0, 0x5

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "PJPRUFMX2B3H"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1305
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    .line 1307
    return-void
.end method

.method protected saveContactChecksumValue()V
    .locals 5

    .prologue
    .line 932
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    .line 933
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 932
    invoke-direct {v0, v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 934
    .local v0, "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;->buidChecksum()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    move-result-object v2

    .line 935
    .local v2, "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    iget-object v1, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;->allContactChecksumObjectMap:Ljava/util/Map;

    .line 936
    .local v1, "checksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->setContactChecksumMap(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 937
    return-void
.end method

.method protected setProgressStep(I)V
    .locals 3
    .param p1, "progressStep"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1208
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->curProgressStep:I

    if-le p1, v0, :cond_0

    .line 1209
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 1210
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->curProgressStep:I

    .line 1211
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->curProgressStep:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1212
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 1215
    :cond_0
    return-void
.end method

.method protected startTask()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->start:J

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->progressMocker:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->startProgress()V

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->validateContactRule()Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->needContactPhotoSync()Z

    move-result v2

    .line 138
    .local v2, "isAutoSyncContactPhoto":Z
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->bNeedToBackuped:Z

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doFetchServerVersion()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 141
    .local v12, "currentCloudVersion":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 142
    .local v16, "endFetchVersion":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->readLastServerVersion(Landroid/content/Context;)J

    move-result-wide v18

    .line 143
    .local v18, "savedCloudVersion":J
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 144
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->setProgressStep(I)V

    .line 145
    cmp-long v3, v12, v18

    if-nez v3, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    const-string v4, "CONTACT_SYNC_FAST_CHECK_LOCAL_ALLOWED"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->containsContactSid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumWhenCloudNoChange(Z)V

    .line 162
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 164
    .local v14, "endChecksum":J
    const-string v3, "DEBUG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "endChecksum:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v14, v16

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v3, "DEBUG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start to endChecksum####:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->start:J

    sub-long v6, v14, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkSyncRule(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkAndShowMockMessage(Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->bNeedToBackuped:Z

    .line 171
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->bNeedToBackuped:Z

    if-eqz v3, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 176
    .local v26, "userchoose":J
    const-string v3, "DEBUG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "user choose####:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v26, v14

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyProgressMockerEstimate()V

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->syncContact()V

    .line 181
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    if-nez v3, :cond_0

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 185
    .local v20, "syncContact":J
    const-string v3, "DEBUG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncContact####:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v20, v26

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupChecksumRespnse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->syncGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 189
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    if-nez v3, :cond_0

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 193
    .local v22, "syncGroup":J
    const-string v3, "DEBUG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncGroup####:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v22, v20

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checkCancelOperation()V

    .line 196
    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->isPhotoChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->photoCidLengthCache:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->syncPhoto(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 199
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 200
    .local v24, "syncPhoto":J
    const-string v3, "DEBUG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncPhoto####:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v24, v22

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->start:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cost:J

    .line 203
    const-string v4, "LCPContact"

    const-string v5, "CONTACT_SYNC"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 204
    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->result:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cost:J

    const-string v10, "2"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    move-object/from16 v3, p0

    .line 203
    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 153
    .end local v14    # "endChecksum":J
    .end local v20    # "syncContact":J
    .end local v22    # "syncGroup":J
    .end local v24    # "syncPhoto":J
    .end local v26    # "userchoose":J
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->cloudContactCount:I

    if-nez v3, :cond_4

    .line 154
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->localContactCount:I

    if-lez v3, :cond_4

    .line 155
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->mContext:Landroid/content/Context;

    .line 156
    const-string v5, "CONTACT_SYNC_RULE"

    const/4 v6, 0x0

    .line 155
    invoke-static {v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 158
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumFirstBackupCloudNoData(Z)V

    goto/16 :goto_1

    .line 160
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->checksumWhenCloudChange(Z)V

    goto/16 :goto_1
.end method
