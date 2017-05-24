.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$3;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)I
    .locals 5
    .param p1, "o1"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p2, "o2"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 1252
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v0

    .line 1253
    .local v0, "id1":J
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v2

    .line 1254
    .local v2, "id2":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1255
    const/4 v4, -0x1

    .line 1259
    :goto_0
    return v4

    .line 1256
    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 1257
    const/4 v4, 0x1

    goto :goto_0

    .line 1259
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1249
    check-cast p1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$3;->compare(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)I

    move-result v0

    return v0
.end method
