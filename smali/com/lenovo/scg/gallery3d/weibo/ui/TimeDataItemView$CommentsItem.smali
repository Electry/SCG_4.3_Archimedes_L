.class public Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
.super Ljava/lang/Object;
.source "TimeDataItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentsItem"
.end annotation


# instance fields
.field public arrComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public nPos:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V
    .locals 1

    .prologue
    .line 983
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    .line 985
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->nPos:I

    return-void
.end method
