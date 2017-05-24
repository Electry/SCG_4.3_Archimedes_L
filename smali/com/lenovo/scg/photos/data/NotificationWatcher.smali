.class public Lcom/lenovo/scg/photos/data/NotificationWatcher;
.super Ljava/lang/Object;
.source "NotificationWatcher.java"

# interfaces
.implements Lcom/lenovo/scg/photos/data/PhotoProvider$ChangeNotification;


# instance fields
.field private mSyncToNetwork:Z

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/NotificationWatcher;->mUris:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/data/NotificationWatcher;->mSyncToNetwork:Z

    return-void
.end method


# virtual methods
.method public isNotified(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/NotificationWatcher;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notificationCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/NotificationWatcher;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public notifyChange(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "syncToNetwork"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/NotificationWatcher;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/data/NotificationWatcher;->mSyncToNetwork:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/photos/data/NotificationWatcher;->mSyncToNetwork:Z

    .line 40
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/NotificationWatcher;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/data/NotificationWatcher;->mSyncToNetwork:Z

    .line 57
    return-void
.end method

.method public syncToNetwork()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/data/NotificationWatcher;->mSyncToNetwork:Z

    return v0
.end method
