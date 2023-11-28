//
//  LandingView.swift
//  DrawingToYou-iOS
//
//  Created by 김혜수 on 11/28/23.
//

import SwiftUI

struct LandingView: View {
    
    @State private var drawingCount: Int = 100
    
    var body: some View {
        VStack(spacing: 48) {
            VStack(spacing: 20){
                noticeLabel
                logoImageView
                descriptionLabel
                gifImageView
            }
            VStack(spacing: 16) {
                orangeButton
                countLabel
            }
        }
    }
    
    var noticeLabel: some View {
        HStack {
            Image(.speaker)
            Text("롤링페이퍼 공개까지 D-7")
                .font(.style(.caption1))
        }
        .frame(width: 163, height: 29)
        .background(Color.yellow)
        .clipShape(.rect(cornerRadius: 100, style: .continuous))
    }
    
    var logoImageView: some View {
        Image(.logo)
            .frame(width: 269, height: 103)
    }
    
    var descriptionLabel: some View {
        Text("직접 그린 하나뿐인 그림과\n마음이 담긴 편지를 받아보세요")
            .font(.style(.body1))
            .multilineTextAlignment(.center)
    }
    
    var gifImageView: some View {
        Rectangle()
            .foregroundColor(.yellow)
            .frame(height: 272)
    }
    
    var orangeButton: some View {
        Button(
            action: {
            },
            label: {
                HStack {
                    Image(.iconPaint)
                    Text("그림 롤링페이퍼 받아보기")
                        .font(.style(.body1))
                        .foregroundStyle(.white)
                }
            }
        )
        .frame(height: 48)
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .background(Color.secondary900)
        .clipShape(.rect(cornerRadius: 100))
    }
    
    var countLabel: some View {
        Text("지금까지 \(drawingCount)개의 그림이 그려졌어요.")
            .font(.style(.caption1))
            .foregroundStyle(.onSurfaceDefault)
    }
}

#Preview {
    LandingView()
}
