.class public Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;
.super Ljava/lang/Object;
.source "SlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataItemLite"
.end annotation


# instance fields
.field public bm:Landroid/graphics/Bitmap;

.field public isretweeted:Z

.field public middleurl:Ljava/lang/String;

.field public orgurl:Ljava/lang/String;

.field public s_uid:J

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

.field public thumailurl:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public u_name:Ljava/lang/String;

.field public u_uid:J


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
