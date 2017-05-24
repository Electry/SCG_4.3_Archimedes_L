.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipObject;
.super Ljava/lang/Object;
.source "FriendshipObject.java"


# instance fields
.field public source:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field public target:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
