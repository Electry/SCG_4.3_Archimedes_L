.class public final enum Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;
.super Ljava/lang/Enum;
.source "AbstractGenderFlagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "GENDER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

.field public static final enum MAN:Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

.field public static final enum OTHER:Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

.field public static final enum WOMAN:Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    const-string v1, "MAN"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;->MAN:Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    .line 17
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    const-string v1, "WOMAN"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;->WOMAN:Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    .line 18
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;->OTHER:Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    sget-object v1, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;->MAN:Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;->WOMAN:Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;->OTHER:Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;->$VALUES:[Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;->$VALUES:[Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    return-object v0
.end method
