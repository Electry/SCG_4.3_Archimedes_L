.class public Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;
.super Ljava/lang/Object;
.source "RecentlyAtUsersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;
    }
.end annotation


# static fields
.field private static final KEY_BASE_RECENTLY_AT:Ljava/lang/String; = "recently_at_"

.field private static final KEY_RECENTLY_AT_EMPTY:Ljava/lang/String; = "recently_at_empty"

.field private static final NUMBER_RECENTLY_AT_STORE:I = 0xa

.field private static mInstance:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->mInstance:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "platf"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-class v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->mInstance:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->mInstance:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->mInstance:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPreferencesName(Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)Ljava/lang/String;
    .locals 2
    .param p1, "platform"    # Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    if-ne p1, v1, :cond_0

    .line 112
    const-string/jumbo v0, "tencent_weibo"

    .line 116
    :goto_0
    return-object v0

    .line 114
    :cond_0
    const-string v0, "com_weibo_sdk_android"

    goto :goto_0
.end method

.method private isExist(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "platform"    # Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, -0x1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const/4 v1, -0x1

    .line 101
    .local v1, "pos":I
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->getRecentAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)Ljava/util/LinkedList;

    move-result-object v2

    .line 102
    .local v2, "users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 103
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 105
    goto :goto_0
.end method


# virtual methods
.method public addRecentlyAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)V
    .locals 9
    .param p1, "user"    # Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    .param p2, "platform"    # Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->isExist(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)I

    move-result v3

    .line 80
    .local v3, "pos":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 83
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->getPreferencesName(Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 84
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const/16 v1, 0xa

    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_2

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recently_at_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "recently_at_empty"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "tName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recently_at_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 89
    .end local v5    # "tName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "recently_at_0"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public getRecentAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)Ljava/util/LinkedList;
    .locals 8
    .param p1, "platform"    # Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 55
    .local v4, "users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->getPreferencesName(Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 56
    .local v2, "sp":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v0, v5, :cond_2

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recently_at_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "recently_at_empty"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "screenName":Ljava/lang/String;
    const-string/jumbo v5, "recently_at_empty"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    sget-object v5, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    if-ne p1, v5, :cond_1

    .line 61
    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;-><init>()V

    .line 65
    .local v3, "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :goto_1
    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->setScreenName(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v3    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;-><init>()V

    .restart local v3    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    goto :goto_1

    .line 69
    .end local v1    # "screenName":Ljava/lang/String;
    .end local v3    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_2
    return-object v4
.end method
