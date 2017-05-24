.class Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify$1;
.super Ljava/lang/Object;
.source "ATI_Notify.java"

# interfaces
.implements Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCallback(IILjava/lang/Object;I)I
    .locals 2
    .param p1, "iMsgType"    # I
    .param p2, "iMsgTime"    # I
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "nUserData"    # I

    .prologue
    .line 12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyList:Ljava/util/List;
    invoke-static {}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->access$0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 15
    const/4 v1, 0x0

    return v1

    .line 13
    :cond_0
    # getter for: Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyList:Ljava/util/List;
    invoke-static {}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->access$0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;->onCallback(IILjava/lang/Object;I)I

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
