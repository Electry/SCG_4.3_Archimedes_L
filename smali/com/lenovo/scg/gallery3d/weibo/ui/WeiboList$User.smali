.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;
.super Ljava/lang/Object;
.source "WeiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "User"
.end annotation


# instance fields
.field bm:Landroid/graphics/Bitmap;

.field bmStr:Ljava/lang/String;

.field followersCount:I

.field friendsCount:I

.field isVerified:Z

.field name:Ljava/lang/String;

.field statusesCount:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

.field uid:J


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    return-void
.end method
