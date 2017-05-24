.class public Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboActivityBase;
.super Landroid/app/Activity;
.source "WeiboActivityBase.java"


# instance fields
.field private mDataListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeiboDataListener()Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboActivityBase;->mDataListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;

    return-object v0
.end method

.method public setDataListener(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboActivityBase;->mDataListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;

    .line 32
    return-void
.end method
