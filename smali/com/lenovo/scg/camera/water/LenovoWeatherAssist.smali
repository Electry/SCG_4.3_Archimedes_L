.class public Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;
.super Ljava/lang/Object;
.source "LenovoWeatherAssist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$1;,
        Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;,
        Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;
    }
.end annotation


# static fields
.field private static final AUTHORITY_SYN:Ljava/lang/String; = "com.lenovo.acwea.ForcastWeaDBProvider"

.field public static final RECEIVER_ACTION_CITYFORCAST_UPDATE:Ljava/lang/String; = "com.lenovo.acwea.cityforcastup.action"

.field public static final RECEIVER_ACTION_DATA_UPDATE:Ljava/lang/String; = "com.lenovo.acwea.dataupdate.action"

.field private static final RECEIVER_ACTION_LOCALFORCAST_UPDATE:Ljava/lang/String; = "com.lenovo.acwea.localforcastup.action"

.field private static final TAG:Ljava/lang/String; = "LenovoWeatherAssist"

.field private static mInstance:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForcastUpReceiver:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mInstance:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mInstance:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    return-object v0
.end method


# virtual methods
.method public addListeners(Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mListeners:Ljava/util/ArrayList;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public getLocalTodayDataFormDB()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 116
    iget-object v3, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 117
    const-string v3, "LenovoWeatherAssist"

    const-string v4, "getLocalTodayDataFormDB, mContext == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    :goto_0
    return-object v7

    .line 121
    :cond_1
    const-string v3, "content://com.lenovo.acwea.ForcastWeaDBProvider/defToday"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 126
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 128
    .local v7, "weather":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "weatherDay"

    aput-object v3, v2, v4

    .line 154
    .local v2, "projecction":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "epochDate desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    if-eqz v6, :cond_2

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 167
    :cond_2
    if-eqz v6, :cond_0

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_3

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public registerWeatherReceiver()V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 66
    const-string v1, "LenovoWeatherAssist"

    const-string/jumbo v2, "registerWeatherReceiver, mContext == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mForcastUpReceiver:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;-><init>(Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mForcastUpReceiver:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lenovo.acwea.localforcastup.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "com.lenovo.acwea.cityforcastup.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "com.lenovo.acwea.dataupdate.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mForcastUpReceiver:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public removeListener(Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public unRegisterWeatherReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 83
    const-string v1, "LenovoWeatherAssist"

    const-string/jumbo v2, "unRegisterWeatherReceiver, mContext == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mForcastUpReceiver:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mForcastUpReceiver:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iput-object v3, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mForcastUpReceiver:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "LenovoWeatherAssist"

    const-string/jumbo v2, "unRegisterWeatherReceiver, catch exception!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    iput-object v3, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mForcastUpReceiver:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->mForcastUpReceiver:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$ForcastUpRec;

    throw v1
.end method
