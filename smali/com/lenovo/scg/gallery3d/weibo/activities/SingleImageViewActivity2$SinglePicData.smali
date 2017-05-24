.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
.super Ljava/lang/Object;
.source "SingleImageViewActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinglePicData"
.end annotation


# instance fields
.field public commentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public headInfo:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

.field public repostList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0

    .prologue
    .line 2489
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;

    .prologue
    .line 2489
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    return-void
.end method
