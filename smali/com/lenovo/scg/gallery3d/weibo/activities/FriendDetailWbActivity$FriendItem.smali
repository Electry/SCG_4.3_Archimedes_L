.class public Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;
.super Ljava/lang/Object;
.source "FriendDetailWbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendItem"
.end annotation


# instance fields
.field public arrItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public nTotalStatus:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V
    .locals 1

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->nTotalStatus:I

    .line 1471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->arrItems:Ljava/util/ArrayList;

    return-void
.end method
