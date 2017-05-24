.class public Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
.super Ljava/lang/Object;
.source "DraftItem.java"


# instance fields
.field public action:I

.field public bExpand:Z

.field public iShareType:I

.field public id:I

.field public lStatusId:J

.field public lTime:J

.field public sContent:Ljava/lang/String;

.field public sFile:Ljava/lang/String;

.field public sLat:Ljava/lang/String;

.field public sLong:Ljava/lang/String;

.field public sScreenName:Ljava/lang/String;

.field public sTime:Ljava/lang/String;

.field public sTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->bExpand:Z

    return-void
.end method
