.class public final enum Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;
.super Ljava/lang/Enum;
.source "AbstractWeiboDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "EnumTaskDoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

.field public static final enum DONE_TYPE_STATUS_COMMENTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

.field public static final enum DONE_TYPE_STATUS_PIC:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

.field public static final enum DONE_TYPE_STATUS_REPOSTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

.field public static final enum DONE_TYPE_STATUS_TEXT:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

.field public static final enum DONE_TYPE_USER_HEAD:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    const-string v1, "DONE_TYPE_STATUS_TEXT"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_TEXT:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    .line 67
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    const-string v1, "DONE_TYPE_STATUS_PIC"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_PIC:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    .line 68
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    const-string v1, "DONE_TYPE_STATUS_COMMENTS"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_COMMENTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    .line 69
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    const-string v1, "DONE_TYPE_STATUS_REPOSTS"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_REPOSTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    .line 70
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    const-string v1, "DONE_TYPE_USER_HEAD"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_USER_HEAD:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_TEXT:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_PIC:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_COMMENTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_REPOSTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_USER_HEAD:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->$VALUES:[Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->$VALUES:[Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    return-object v0
.end method
