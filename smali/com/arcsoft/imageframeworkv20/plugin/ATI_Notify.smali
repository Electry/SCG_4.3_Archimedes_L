.class public Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;
.super Ljava/lang/Object;
.source "ATI_Notify.java"


# static fields
.field public static mNotifyCb:Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

.field private static mNotifyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyList:Ljava/util/List;

    .line 9
    new-instance v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify$1;

    invoke-direct {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify$1;-><init>()V

    sput-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyCb:Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyList:Ljava/util/List;

    return-object v0
.end method

.method public static registerNotify(Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;)I
    .locals 1
    .param p0, "cb"    # Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

    .prologue
    .line 19
    sget-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    sget-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static unRegisterNotify(I)V
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 27
    if-ltz p0, :cond_0

    sget-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p0, v0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    sget-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
