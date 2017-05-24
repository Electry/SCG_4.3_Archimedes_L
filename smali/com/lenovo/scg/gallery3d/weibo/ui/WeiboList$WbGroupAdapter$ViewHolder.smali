.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WeiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

.field public tvCount:Landroid/widget/TextView;

.field public tvName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;)V
    .locals 0

    .prologue
    .line 3282
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;->this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;

    .prologue
    .line 3282
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;)V

    return-void
.end method
