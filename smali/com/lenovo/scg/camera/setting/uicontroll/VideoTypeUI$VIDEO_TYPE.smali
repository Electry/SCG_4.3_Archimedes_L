.class public final enum Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;
.super Ljava/lang/Enum;
.source "VideoTypeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIDEO_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

.field public static final enum hdr:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

.field public static final enum live:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

.field public static final enum night:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

.field public static final enum normal:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

.field public static final enum rapid:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

.field public static final enum slow:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    const-string/jumbo v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->normal:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    const-string v1, "hdr"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->hdr:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    const-string/jumbo v1, "rapid"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->rapid:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    const-string/jumbo v1, "slow"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->slow:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    const-string/jumbo v1, "night"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->night:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    const-string v1, "live"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->live:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    sget-object v1, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->normal:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->hdr:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->rapid:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->slow:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->night:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->live:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->$VALUES:[Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->$VALUES:[Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    return-object v0
.end method
